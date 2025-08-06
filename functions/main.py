# Flask app for sending Firebase Cloud Messaging notifications to the 'chat' topic.
# Place your Firebase service account key as 'serviceAccountKey.json' in this directory.
# To use: POST to /send_notification with JSON: {"username": "...", "text": "..."}

from flask import Flask, request, jsonify
import firebase_admin
from firebase_admin import credentials, messaging
import os

app = Flask(__name__)

# Initialize Firebase Admin SDK (only once)
if not firebase_admin._apps:
    cred = credentials.Certificate(
        os.path.join(os.path.dirname(__file__), "serviceAccountKey.json")
    )
    firebase_admin.initialize_app(cred)


@app.route("/send_notification", methods=["POST"])
def send_notification():
    data = request.json
    username = data.get("username")
    text = data.get("text")

    if not username or not text:
        return jsonify({"success": False, "error": "Missing username or text"}), 400

    # Construct the notification message
    message = messaging.Message(
        notification=messaging.Notification(
            title=username,
            body=text,
        ),
        data={
            "click_action": "FLUTTER_NOTIFICATION_CLICK",
        },
        topic="chat",
    )

    # Send the notification
    try:
        response = messaging.send(message)
        return jsonify({"success": True, "response": response})
    except Exception as e:
        return jsonify({"success": False, "error": str(e)}), 500


if __name__ == "__main__":
    app.run(debug=True)

const WebSocket = require("ws");

const port = process.env.PORT || 10000;

const wss = new WebSocket.Server({ port });

wss.on("connection", (ws) => {
    console.log("Client connected");

    ws.send(JSON.stringify({
        type: "welcome",
        message: "Connected"
    }));

    ws.on("message", (msg) => {
        console.log(msg.toString());
    });
});

console.log(`Listening on ${port}`);

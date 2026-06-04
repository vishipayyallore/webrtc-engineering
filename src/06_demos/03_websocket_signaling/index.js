import express from 'express';
import { createServer } from 'node:http';
import { Server } from 'socket.io';

const PORT = Number(process.env.PORT) || 4000;
const app = express();
const httpServer = createServer(app);

const io = new Server(httpServer, {
  cors: { origin: true },
});

app.use(express.static('public'));

io.on('connection', (socket) => {
  socket.on('chat:message', (payload) => {
    const text = typeof payload?.text === 'string' ? payload.text.trim() : '';
    const user = typeof payload?.user === 'string' ? payload.user.trim() : 'guest';
    if (!text) return;
    io.emit('chat:message', { user, text, at: Date.now() });
  });
});

httpServer.listen(PORT, () => {
  console.log(`WebSocket chat listening on http://localhost:${PORT}`);
});

const userInput = document.getElementById('user');
const list = document.getElementById('messages');
const form = document.getElementById('form');
const textInput = document.getElementById('text');

const socket = io();

function appendLine({ user, text, at }) {
  const li = document.createElement('li');
  const time = new Date(at).toLocaleTimeString();
  li.textContent = `[${time}] ${user}: ${text}`;
  list.appendChild(li);
  list.scrollTop = list.scrollHeight;
}

socket.on('chat:message', appendLine);

form.addEventListener('submit', (event) => {
  event.preventDefault();
  const text = textInput.value.trim();
  if (!text) return;
  const user = userInput.value.trim() || 'guest';
  socket.emit('chat:message', { user, text });
  textInput.value = '';
  textInput.focus();
});

textInput.focus();

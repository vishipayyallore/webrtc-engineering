# Request–response vs real-time links

## Classic HTTP pattern

A client sends a request; the server returns one response. For a dashboard that refreshes every few seconds, that can be enough.

## Why chat and call setup feel different

When I type a chat line, I want the remote side to see it **immediately**, not after the other browser polls again. Call setup has the same urgency: accept/reject and session metadata should propagate in milliseconds, not on a timer.

## WebSocket mental model

One long-lived connection where **either side** may send messages at any time. The link is **bidirectional** and **persistent** until someone closes it.

That matches signaling needs: both peers (via a relay server) push offers, answers, and ICE fragments without reopening TCP for each message.

## Relation to WebRTC

WebRTC does not require WebSockets, but I learn them first because:

1. I can ship a useful chat lab before ICE complexity.
2. The same server process later forwards SDP/ICE JSON between tabs.

## Real-world use case

A multiplayer lobby that announces “match found” to every connected client—same transport pattern as forwarding WebRTC signaling payloads.

# WebSockets (Signaling Transport)

## Mermaid Theme

```mermaid
%%{
  init: {
    "theme": "base",
    "themeVariables": {
      "primaryColor": "#E3F2FD",
      "primaryTextColor": "#1F2937",
      "primaryBorderColor": "#90CAF9",

      "secondaryColor": "#E8F5E9",
      "secondaryBorderColor": "#A5D6A7",

      "tertiaryColor": "#FFF8E1",

      "lineColor": "#78909C",
      "textColor": "#1F2937",

      "background": "#FFFFFF"
    }
  }
}%%
flowchart LR
    A["Mermaid Theme"]
```

> **Color Convention**
>
> * Signaling → Light Blue
> * ICE → Light Green
> * DTLS → Light Amber
> * RTP/SRTP → Light Purple
> * Peers → Light Cyan
> * Servers → Light Gray

---

## Purpose

I study WebSockets as a **bidirectional communication channel**.

Many WebRTC applications use WebSockets for signaling because both sides need to exchange messages immediately during call setup.

WebRTC itself does not require WebSockets, but WebSockets are one of the most common signaling transports.

---

## Why Learn WebSockets Before WebRTC

Building a chat application teaches me:

* Persistent connections
* Bidirectional messaging
* User presence
* Message routing
* Session management

without introducing:

* SDP
* ICE
* STUN
* TURN
* Codec negotiation

This separates signaling problems from media problems.

---

## Request–Response vs Real-Time Communication

### Mermaid

```mermaid
%%{
  init: {
    "theme": "base"
  }
}%%
flowchart LR

    Client["Client"]
    Server["Server"]

    style Client fill:#E1F5FE,stroke:#81D4FA
    style Server fill:#ECEFF1,stroke:#B0BEC5

    Client -->|Request| Server
    Server -->|Response| Client
```

### ASCII Fallback

```text
Client ---- Request ----> Server
Client <--- Response ---- Server
```

Traditional HTTP works well when:

* A response can wait
* The client initiates communication
* Updates are infrequent

Examples:

* Product pages
* Dashboards
* REST APIs

---

## Why Chat and Call Setup Feel Different

Chat messages and call signaling require low latency.

Waiting for a polling interval introduces noticeable delays.

Examples:

* New chat message
* Incoming call
* Call accepted
* Call rejected
* ICE candidate exchange

These events should propagate immediately.

---

## WebSocket Mental Model

A WebSocket connection is:

* Persistent
* Bidirectional
* Full duplex

Either side can send messages at any time.

### Mermaid

```mermaid
flowchart LR

    A["Browser A"]
    S["Signaling Server"]
    B["Browser B"]

    style A fill:#E1F5FE,stroke:#81D4FA
    style B fill:#E1F5FE,stroke:#81D4FA
    style S fill:#ECEFF1,stroke:#B0BEC5

    A <--> S
    B <--> S
```

### ASCII Fallback

```text
Browser A <=========> Server
Browser B <=========> Server
```

The connection remains open until one side closes it.

---

## WebRTC Signaling Through WebSockets

WebRTC does not care how signaling happens.

It only requires a mechanism to exchange messages.

Examples:

* WebSockets
* Server-Sent Events
* MQTT
* SIP
* HTTP Long Polling
* QR Codes
* Manual Copy/Paste

WebSockets are commonly used because they provide a low-latency bidirectional channel.

---

## The Signaling Server Is a Router

The signaling server is not merely a transport pipe.

Its job is to route messages to the correct destination.

### Mermaid

```mermaid
flowchart TD

    Alice["Alice"]
    Server["Signaling Server"]
    Bob["Bob"]

    style Alice fill:#E1F5FE,stroke:#81D4FA
    style Bob fill:#E1F5FE,stroke:#81D4FA
    style Server fill:#ECEFF1,stroke:#B0BEC5

    Alice -->|SDP Offer| Server
    Server -->|Forward| Bob
```

### ASCII Fallback

```text
Alice
  |
SDP Offer
  |
Signaling Server
  |
Forward
  |
Bob
```

The server must know:

* Who sent the message
* Who should receive it
* Which connection belongs to which user

---

## User Registry

A signaling server typically maintains a registry.

### Concept

```text
userId -> WebSocket Connection
```

Example:

```text
alice -> ws#1
bob   -> ws#2
carol -> ws#3
```

When Alice sends a message for Bob:

```text
Lookup "bob"
      ↓
Find ws#2
      ↓
Forward message
```

---

## Typed Message Envelope

Avoid sending raw strings.

Use a structured message format from the beginning.

```json
{
  "type": "sdp-offer",
  "sender": "alice",
  "target": "bob",
  "payload": {
    "...": "..."
  }
}
```

Benefits:

* Easier debugging
* Easier routing
* Easier validation
* Supports future message types

---

## Common Message Types

```text
chat-message
user-joined
user-left

sdp-offer
sdp-answer
ice-candidate

call-accepted
call-rejected
```

The signaling server forwards messages based on the message type.

---

## Rooms and Sessions

Broadcasting every message to every connected client does not scale.

Instead, users belong to rooms or sessions.

### Mermaid

```mermaid
flowchart TD

    RoomA["Room A"]
    RoomB["Room B"]

    Alice["Alice"]
    Bob["Bob"]
    Carol["Carol"]
    Dave["Dave"]

    style RoomA fill:#F3E5F5,stroke:#BA68C8
    style RoomB fill:#F3E5F5,stroke:#BA68C8

    Alice --> RoomA
    Bob --> RoomA

    Carol --> RoomB
    Dave --> RoomB
```

### ASCII Fallback

```text
Room A
 ├─ Alice
 └─ Bob

Room B
 ├─ Carol
 └─ Dave
```

Messages remain within the room.

---

## Connection Lifecycle

### Mermaid

```mermaid
sequenceDiagram
    participant Client
    participant Server

    Client->>Server: Connect
    Server-->>Client: Connected

    Client->>Server: Send Message
    Server-->>Client: Forward Message

    Client->>Server: Disconnect
```

### ASCII Fallback

```text
Connect
   ↓
Exchange Messages
   ↓
Disconnect
```

---

## Production Reality: Connections Drop

A WebSocket connection is long-lived.

Networks change.

Users:

* Close laptops
* Switch WiFi
* Move to cellular
* Lose connectivity

The connection may disappear unexpectedly.

---

## Heartbeats

Production systems typically implement:

```text
Ping
 ↓
Pong
```

to verify the connection is still alive.

### Mermaid

```mermaid
sequenceDiagram
    participant Server
    participant Client

    Server->>Client: Ping
    Client->>Server: Pong
```

### ASCII Fallback

```text
Server ---- Ping ----> Client
Server <--- Pong ----- Client
```

---

## Relation to WebRTC

The same signaling server later forwards:

* SDP offers
* SDP answers
* ICE candidates

### Mermaid

```mermaid
flowchart TD

    A["Peer A"]
    S["Signaling Server"]
    B["Peer B"]

    style A fill:#E1F5FE,stroke:#81D4FA
    style B fill:#E1F5FE,stroke:#81D4FA
    style S fill:#ECEFF1,stroke:#B0BEC5

    A -->|Offer SDP| S
    S -->|Offer SDP| B

    B -->|Answer SDP| S
    S -->|Answer SDP| A

    A -->|ICE Candidate| S
    S -->|ICE Candidate| B
```

### ASCII Fallback

```text
Peer A
   |
Offer SDP
   |
Signaling Server
   |
Offer SDP
   |
Peer B
```

The WebSocket server never carries audio or video.

It only carries signaling messages.

---

## Real-World Use Case

A multiplayer lobby announces:

```text
Match Found
```

to connected users.

The same transport pattern later forwards:

* SDP offers
* SDP answers
* ICE candidates

The architecture remains the same.

Only the message payload changes.

---

## Key Takeaway

WebSockets provide a:

* Persistent connection
* Bidirectional channel
* Low-latency transport

for exchanging signaling messages.

Mental model:

```text
WebSocket
    ↓
Signaling Transport
    ↓
Exchange SDP / ICE
    ↓
WebRTC Connection
```

WebSockets do not carry media.

They help peers coordinate so media can flow directly between them.

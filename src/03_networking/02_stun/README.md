# STUN

## Plain English

**STUN** answers: “What address does the rest of the internet think I’m on?” My laptop sits behind a home router with a **private** address; outsiders only see the router’s **public** address. STUN reflects a packet so I learn that public mapping.

## Analogy I use

It is like asking a mirror on the internet to tell me the address it sees—similar in spirit to visiting a “what is my IP” site, but standardized for WebRTC stacks.

## What STUN does not do

It does **not** relay heavy media long-term. It is a **discovery** tool for ICE candidates, not a substitute for TURN.

## Experiment

Compare paths in `07_experiments/01_stun_vs_turn/`.

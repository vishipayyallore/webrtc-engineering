# ICE (connectivity establishment)

## Plain English

**ICE** (Interactive Connectivity Establishment) is how two endpoints **try multiple network paths**—direct LAN, public IP discovered via STUN, or relay via TURN—and pick one that actually works through their firewalls and NATs.

## How I think about it

Each side gathers **candidates** (address/port/protocol tuples). Signaling swaps them. ICE runs **connectivity checks** in priority order until a pair succeeds or everything times out.

## Related notes

- `02_stun/` — how I learn my public-facing address
- `03_turn/` — relay when direct candidates fail

## Demo path

`06_demos/06_ice_candidates/` will make this concrete after offer/answer practice.

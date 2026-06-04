# TURN

## Plain English

When ICE cannot open a direct path—symmetric NAT, strict corporate firewalls, some cross-region cases—I need a **relay**. **TURN** sends media through a server both sides can reach. I pay bandwidth twice (in and out of the relay), but the call **completes**.

## When I plan for TURN

Production apps assume a non-trivial fraction of calls will need relay. I budget:

- TURN server capacity and geographic placement
- Authentication (time-limited credentials)
- Monitoring relay percentage as a health metric

## Backup, not default

I still try host and server-reflexive candidates first. TURN is the **safety net**, not the happy path.

## Experiment

`07_experiments/01_stun_vs_turn/` and Coturn notes under `tools/coturn/`.

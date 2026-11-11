# Initial Business Requirements

## Business concept
A proposed local-commerce marketplace where customers discover products from nearby physical retailers, place orders through one app, and receive same-day delivery. Retailers prepare and package orders; delivery partners collect ready packages. The operating model groups nearby store pickups to limit unnecessary detours. This is a hypothesis to validate, not a proven market gap.

## Customer workflow
1. Search products across local retailers.
2. View store, price, availability, and estimated same-day delivery window.
3. Add items from one or more nearby stores.
4. Review grouped pickup route, delivery fee, and estimated arrival window.
5. Confirm and pay through the app.
6. Receive order status updates and proof of delivery.

## Retailer requirements
- Retailer authorizes the platform and delivery partner to collect orders.
- Retailer confirms inventory and prepares/packages the order.
- Retailer marks package ready before dispatch.
- Clear substitution, cancellation, refund, and return process.

## Delivery partner requirements
- Identity and eligibility verification.
- Valid driver's license, vehicle registration, and insurance appropriate for paid delivery where using a motor vehicle.
- Relevant background/driving checks where lawful and appropriate.
- See pickup points, destination, distance, expected time, and compensation before accepting.
- Fair cancellation, emergency, safety, and retailer-delay policies.

## Business rules to test
- Group pickups only when the added route distance/time stays below a defined detour threshold.
- Do not send a partner to collect an order until the retailer confirms it is ready, unless waiting is explicitly built into the workflow.
- If stock is unavailable, customer approves substitution or receives refund.
- Show fee/ETA changes before customer confirms.
- Delivery fees may reflect distance, pickup count, time, and route complexity.
- Membership price and benefits are separate from delivery fees.
- Do not promise a delivery window unless partner and store capacity support it.

## MVP proposal
One shopping district, a small set of retailers, limited service area, a small partner pool, and a few product categories. Validate retailer handoff and store readiness before expansion.

## Open research questions
Retailer authorization and preparation times; inventory/POS integration; payment settlement and refunds; local insurance and worker-classification rules; unit economics; acceptable partner detour; demand for a low-cost subscription.

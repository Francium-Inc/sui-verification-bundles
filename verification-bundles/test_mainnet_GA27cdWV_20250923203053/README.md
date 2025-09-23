# TEST Move Package (Verification Bundle)

This bundle contains the exact Move sources published for the **TEST** coin on Sui Sui Mainnet.

- **Package ID:** `0xd5aed6d0feacff58ce38e1158412ae6a715aeaa18a646fa51f125e4a5f7e24d8`
- **Transaction Digest:** `GA27cdWVRGYzHrkesetnbiNveexyTMGCZgfyvxD88dwD`
- **Network:** `Sui Mainnet`
- **Publisher Wallet:** `0x2bee9f19cd9cee6c5b8b91ef4ea792d4802562382640454af0369f4461a20a58`
- **Recipient Wallet:** `0x6dc40a6b35310e5dd5cb7767f8d8477b9c1fc219f0cc511f45928eddaae341dd`
- **Requested Supply:** `1000`
- **Icon URL:** `https://example.com/icon.png`
- **Verification Payment Intent:** `N/A`
- **Generated:** `2025-09-23T20:30:53.505086Z`

## Rebuild instructions

```bash
sui move build
sui client publish --gas-budget 50000000 --json
```

Ensure you are using a Sui CLI compatible with the active network protocol.

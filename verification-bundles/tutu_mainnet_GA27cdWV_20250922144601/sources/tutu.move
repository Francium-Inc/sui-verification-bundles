module tutu::tutu {
    use sui::coin::{Self, TreasuryCap};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    use sui::url;
    use std::option;

    public struct TUTU has drop {}

    fun init(witness: TUTU, ctx: &mut TxContext) {
        let icon_url = url::new_unsafe_from_bytes(b"https://meme.rolipoli.xyz/meme-icons/1758545787009_ChatGPT Image Sep 21, 2025 at 09_55_16 PM.png");

        let (mut treasury, metadata) = coin::create_currency(
            witness,
            0,
            b"tutu",
            b"tutu",
            b"tutu",
            option::some(icon_url),
            ctx,
        );

        let coin = coin::mint(&mut treasury, 100, ctx);
        transfer::public_transfer(coin, @0x6dc40a6b35310e5dd5cb7767f8d8477b9c1fc219f0cc511f45928eddaae341dd);

        transfer::public_share_object(treasury);
        transfer::public_freeze_object(metadata);
    }
}
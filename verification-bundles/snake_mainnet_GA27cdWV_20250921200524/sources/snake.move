module snake::snake {
    use sui::coin::{Self, TreasuryCap};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    use sui::url;
    use std::option;

    public struct SNAKE has drop {}

    fun init(witness: SNAKE, ctx: &mut TxContext) {
        let icon_url = url::new_unsafe_from_bytes(b"https://meme.rolipoli.xyz/meme-icons/1758484857032_a0e9208c-2455-45a5-8e2c-9760ae2470cc.png");

        let (mut treasury, metadata) = coin::create_currency(
            witness,
            0,
            b"SNAKE",
            b"SNAKE",
            b"SNAKE EAT LIZARD",
            option::some(icon_url),
            ctx,
        );

        let coin = coin::mint(&mut treasury, 999, ctx);
        transfer::public_transfer(coin, @0x6dc40a6b35310e5dd5cb7767f8d8477b9c1fc219f0cc511f45928eddaae341dd);

        transfer::public_share_object(treasury);
        transfer::public_freeze_object(metadata);
    }
}
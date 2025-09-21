module chinese::chinese {
    use sui::coin::{Self, TreasuryCap};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    use sui::url;
    use std::option;

    public struct CHINESE has drop {}

    fun init(witness: CHINESE, ctx: &mut TxContext) {
        let icon_url = url::new_unsafe_from_bytes(b"https://meme.rolipoli.xyz/meme-icons/1758485717981_1b04d734-3ef8-4055-ae96-d6c5729514ef.png");

        let (mut treasury, metadata) = coin::create_currency(
            witness,
            0,
            b"CHINESE",
            b"CHINESE",
            b"CHINESE EAT SNAKE",
            option::some(icon_url),
            ctx,
        );

        let coin = coin::mint(&mut treasury, 99, ctx);
        transfer::public_transfer(coin, @0x6dc40a6b35310e5dd5cb7767f8d8477b9c1fc219f0cc511f45928eddaae341dd);

        transfer::public_share_object(treasury);
        transfer::public_freeze_object(metadata);
    }
}
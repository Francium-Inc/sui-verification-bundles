module test::test {
    use sui::coin::{Self, TreasuryCap};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    use sui::url;
    use std::option;

    public struct TEST has drop {}

    fun init(witness: TEST, ctx: &mut TxContext) {
        let icon_url = url::new_unsafe_from_bytes(b"https://example.com/icon.png");

        let (mut treasury, metadata) = coin::create_currency(
            witness,
            0,
            b"TEST",
            b"Test Coin",
            b"Mint check after template fix",
            option::some(icon_url),
            ctx,
        );

        let coin = coin::mint(&mut treasury, 1000, ctx);
        transfer::public_transfer(coin, @0x6dc40a6b35310e5dd5cb7767f8d8477b9c1fc219f0cc511f45928eddaae341dd);

        transfer::public_share_object(treasury);
        transfer::public_freeze_object(metadata);
    }
}
#![cfg_attr(not(feature = "std"), no_std)]

use sr_api::decl_runtime_apis;
pub const ALGORITHM_IDENTIFIER: [u8; 8] = *b"randomx0";
decl_runtime_apis! {
	pub trait AlgorithmApi {
		fn identifier() -> [u8; 8];
	}
}

#[cfg(test)]
mod tests {
    #[test]
    fn it_works() {
        assert_eq!(2 + 2, 4);
    }
}

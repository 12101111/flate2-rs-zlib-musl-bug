use flate2::{Compression, Compress};

fn main() {
    Compress::new(Compression::best(), false);
}

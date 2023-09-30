fn day1() -> u32 {
    include_str!("../input.txt")
        .split("\n\n")
        .map(|lines| {
            lines
                .split_terminator("\n")
                .map(|n| n.parse::<u32>().unwrap())
                .sum()
        })
        .max()
        .unwrap()
}

fn day2() -> u32 {
    let mut vec = include_str!("../input.txt")
        .split("\n\n")
        .map(|lines| {
            lines
                .split_terminator("\n")
                .map(|n| n.parse::<u32>().unwrap())
                .sum()
        })
        .collect::<Vec<u32>>();

    vec.sort();

    vec[vec.len() - 3 .. vec.len()]
        .to_vec()
        .into_iter()
        .sum()
}

fn main() {
    println!("{}, {}", day1(), day2());
}

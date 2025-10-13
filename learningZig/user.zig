const std = @import("std");

pub fn main() !void {
    var stdin = std.io.getStdIn().reader();
    var stdout = std.io.getStdOut().writer();

    try stdout.print("Qual é o seu nome? ", .{});

    var buffer: [50]u8 = undefined;
    const name = try stdin.readUntilDelimiterOrEof(&buffer, '\n');

    try stdout.print("Olá, {s}!\n", .{name.?});
}

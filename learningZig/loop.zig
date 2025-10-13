const std = @import("std");

pub fn main() void {
    var i: u8 = 0;
    while (i < 5) : (i += 1) {
        if (i % 2 == 0) {
            std.debug.print("{d} é par\n", .{i});
        } else {
            std.debug.print("{d} é ímpar\n", .{i});
        }
    }
}

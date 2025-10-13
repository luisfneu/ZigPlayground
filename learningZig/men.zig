const std = @import("std");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();

    const lista = try allocator.alloc(u8, 5);
    defer allocator.free(lista);

    for (lista, 0..) |*item, i| {
        item.* = @intCast(u8, i + 1);
    }

    for (lista) |valor| {
        std.debug.print("{d} ", .{valor});
    }
    std.debug.print("\n", .{});
}

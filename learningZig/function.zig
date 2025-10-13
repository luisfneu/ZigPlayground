const std = @import("std");

const Ponto = struct {
    x: f32,
    y: f32,

    fn distancia(a: Ponto, b: Ponto) f32 {
        const dx = a.x - b.x;
        const dy = a.y - b.y;
        return std.math.sqrt(dx * dx + dy * dy);
    }
};

pub fn main() void {
    const p1 = Ponto{ .x = 0, .y = 0 };
    const p2 = Ponto{ .x = 3, .y = 4 };

    const d = Ponto.distancia(p1, p2);
    std.debug.print("Distância: {d}\n", .{d});
}

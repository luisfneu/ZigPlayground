const std = @import("std");

pub fn gerarBitonica(alloc: std.mem.Allocator, tamanho: usize, minimo: i32, maximo: i32) ![]i32 {
    const limite_maximo = (maximo - minimo) * 2 + 1;
    var lista = try std.ArrayList(i32).initCapacity(alloc, tamanho);
    defer lista.deinit(alloc);

    if (tamanho > limite_maximo) {
        return error.EntradaInvalida;
    }

    try lista.append(alloc, maximo - 1);

    var atual = maximo;
    while (atual >= minimo and lista.items.len < tamanho) : (atual -= 1) {
        try lista.append(alloc, atual);
    }

    atual = maximo - 2;
    while (atual >= minimo and lista.items.len < tamanho) : (atual -= 1) {
        try lista.insert(alloc, 0, atual);
    }

    return lista.toOwnedSlice(alloc);
}

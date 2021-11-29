import Cell from '../Cell';

test('test', () => {
    expect(true).toBe(true);
});

test('test get position', () => {
    const position = new Cell().numCellPos(1);
    expect(position).toBe(115);
});

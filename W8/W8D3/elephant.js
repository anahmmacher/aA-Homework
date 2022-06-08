function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}
Elephant.prototype.trumpet = function(){
    console.log( `${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};

Elephant.prototype.grow = function () {
    this.height = this.height + 12;
};

Elephant.prototype.addTrick = function(trick) {
    this.tricks.push(trick);
};
contract C {
    function g() public returns (uint a, function() external h, uint b) {
        a = 1;
        h = this.fun;
        b = 9;
    }
    function f() public returns (uint, function() external, uint) {
        // Skips a function type which uses two stack slots.
        try this.g() returns (uint a, function() external h, uint b) {
            return (a, h, b);
        } catch {
        }
    }
    function fun() public pure {}
}
// ----
// f() -> 0x1, 7175878113405833249322534082293024008058894263807714200339205169476534272000, 9

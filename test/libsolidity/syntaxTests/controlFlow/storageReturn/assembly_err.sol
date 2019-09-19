contract C {
    struct S { bool f; }
    S s;
    function f() internal pure returns (S storage) {
        assembly {
        }
    }
}
// ----
// TypeError: (87-96): This variable is of storage pointer type and can not be returned without prior assignment.

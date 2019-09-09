contract C
{
    fallback () external payable {
        uint x;
        assembly {
            x := callvalue()
        }
    }
}

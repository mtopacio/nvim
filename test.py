import asyncio

def test(var: str | None = None) -> str | None:
    """
    test:
    ----
    Short description of the function.

    Returns
    -------
    None
        This function doesn't return anything.
    Examples
    --------
    >>> test()
    """
    return var


async def main():


    print("some liine")
    if True:
        print("test")

asyncio.run(main())

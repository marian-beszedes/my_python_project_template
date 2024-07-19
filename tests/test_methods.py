from typing import Union

import pytest
from python_package import my_math


@pytest.mark.parametrize(
    "a, b, expected",
    [
        (1, 2, 3),
        (-1, -2, -3),
        (1, -1, 0),
        (0, 0, 0),
        (1.5, 2.5, 4.0),
        (1e10, 1e10, 2e10),
    ],
)
def test_add(a: Union[int, float], b: Union[int, float], expected: Union[int, float]) -> None:
    assert my_math.add(a, b) == expected

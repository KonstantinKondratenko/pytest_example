import pytest
 
def add(a, b):
    return a + b
 
 
@pytest.mark.parametrize('a, b, expected',
    [ (1,2,3),
    (-1, 1, 0),
    (0,0,0),
    (43 , 23, 9),
    (100, -101, -1) 
])
def test_add(a,b,expected):
    assert add(a, b) == expected
 

# pragma version 0.4.0
"""
@license MIT
@title snek_token
@author You!
@notice This is my ERC20 token!
"""

# ------------------------------------------------------------------
#                             IMPORTS
# ------------------------------------------------------------------
from ethereum.ercs import IERC20

implements: IERC20
from ethereum.ercs import IERC20Detailed

implements: IERC20Detailed
from lib.pypi.snekmate.auth import ownable as ow

initializes: ow
from lib.pypi.snekmate.tokens import erc20

initializes: erc20[ownable := ow]

exports: erc20.__interface__

# ------------------------------------------------------------------
#                         STATE VARIABLES
# ------------------------------------------------------------------
# Constants & Immutables
NAME: constant(String[25]) = "snek_token"
SYMBOL: constant(String[5]) = "SNEK"
DECIMALS: constant(uint8) = 18
EIP712_VERSOIN: constant(String[20]) = "1"

# ------------------------------------------------------------------
#                            FUNCTIONS
# ------------------------------------------------------------------
@deploy
def __init__(initial_supply: uint256):
    ow.__init__()
    erc20.__init__(NAME, SYMBOL, DECIMALS, NAME, EIP712_VERSOIN)
    erc20._mint(msg.sender, initial_supply)
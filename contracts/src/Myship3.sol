pragma solidity ^0.8;

import 'hardhat/console.sol';
import './Ship.sol';
import './Main.sol' ;


contract Myship3 is Ship {
  uint private x ;
  uint private y ;
  uint ship_width ;
  uint ship_height ;
  uint fire_x ;
  uint fire_y ;

  constructor () {
    x = 12 ;
    y = 40 ;
    fire_x = x ;
    fire_y = y ;
  }
  
  function update (uint new_x , uint new_y ) public virtual override {
    x = new_x ;
    y = new_y ;
  }

  function place (uint width , uint height ) public virtual override returns (uint , uint) {
    ship_width = width ;
    ship_height = height ;
    return (x,y) ;
  }

  function fire () public virtual override returns (uint , uint) {
    fire_x = fire_x + 2 ;
    fire_y = fire_y + 2 ;
    return (fire_x , fire_y ) ;
  }

  

}
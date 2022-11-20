// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Profit_sharing {
    
    address manager;
    
    address payable composer=payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    address payable writer=payable(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
    address payable singer=payable(0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);
    address payable video_editor=payable(0x617F2E2fD72FD9D5503197092aC168c91465E7f2);
    
    uint public total_profit;
    uint public composer_share;
    uint public writer_share;
    uint public singer_share;
    uint public video_editor_share;

    function payEther () public payable{}
        
    function income_distribute()  public 
    {
           composer_share=(total_profit/5);//20 percernt
           writer_share=(total_profit/5);
           video_editor_share=(total_profit/5);
           singer_share=(total_profit*2)/5;
    }
    
    constructor ()  payable {}
        
    
    function profit(uint a_view,uint like,uint dislike) public returns(uint)
    {
         total_profit=((a_view*10)+(like*5)+(dislike/2));
         return total_profit;

         uint256[] Artist = new uint[](4);
         uint256[] Musician = new uint[](4);
         uint256[] Writer = new uint[](4);
         uint256[] composer = new uint[](4);
    }
    
    
    function Rating_Song1(uint256 a) public{}

    function send_income() public payable
    {
        composer.transfer(composer_share*(10**18));
        writer.transfer(writer_share*(10**18) );
        singer.transfer(singer_share*(10**18));
        video_editor.transfer(video_editor_share*(10**18));
    }

   

}
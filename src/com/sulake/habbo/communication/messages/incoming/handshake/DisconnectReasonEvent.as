package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1590:int = 0;
      
      public static const const_1355:int = 1;
      
      public static const const_1296:int = 2;
      
      public static const const_1660:int = 3;
      
      public static const const_1788:int = 4;
      
      public static const const_1566:int = 5;
      
      public static const const_1443:int = 10;
      
      public static const const_1657:int = 11;
      
      public static const const_1774:int = 12;
      
      public static const const_1761:int = 13;
      
      public static const const_1750:int = 16;
      
      public static const const_1564:int = 17;
      
      public static const const_1755:int = 18;
      
      public static const const_1714:int = 19;
      
      public static const const_1624:int = 20;
      
      public static const const_1677:int = 22;
      
      public static const const_1588:int = 23;
      
      public static const const_1678:int = 24;
      
      public static const const_1635:int = 25;
      
      public static const const_1698:int = 26;
      
      public static const const_1644:int = 27;
      
      public static const const_1636:int = 28;
      
      public static const const_1727:int = 29;
      
      public static const const_1675:int = 100;
      
      public static const const_1573:int = 101;
      
      public static const const_1706:int = 102;
      
      public static const const_1666:int = 103;
      
      public static const const_1718:int = 104;
      
      public static const const_1645:int = 105;
      
      public static const const_1713:int = 106;
      
      public static const const_1716:int = 107;
      
      public static const const_1688:int = 108;
      
      public static const const_1651:int = 109;
      
      public static const const_1603:int = 110;
      
      public static const const_1669:int = 111;
      
      public static const const_1577:int = 112;
      
      public static const const_1681:int = 113;
      
      public static const const_1649:int = 114;
      
      public static const const_1655:int = 115;
      
      public static const const_1623:int = 116;
      
      public static const const_1751:int = 117;
      
      public static const const_1705:int = 118;
      
      public static const const_1628:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get method_11() : String
      {
         switch(this.reason)
         {
            case const_1355:
            case const_1443:
               return "banned";
            case const_1296:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}

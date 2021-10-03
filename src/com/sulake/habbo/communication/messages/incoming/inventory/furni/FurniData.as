package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2504:int;
      
      private var var_1390:String;
      
      private var _objId:int;
      
      private var var_1583:int;
      
      private var _category:int;
      
      private var var_1873:String;
      
      private var var_2505:Boolean;
      
      private var var_2506:Boolean;
      
      private var var_2507:Boolean;
      
      private var var_2508:Boolean;
      
      private var var_2257:int;
      
      private var var_1542:int;
      
      private var var_1570:String = "";
      
      private var var_1918:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2504 = param1;
         this.var_1390 = param2;
         this._objId = param3;
         this.var_1583 = param4;
         this._category = param5;
         this.var_1873 = param6;
         this.var_2505 = param7;
         this.var_2506 = param8;
         this.var_2507 = param9;
         this.var_2508 = param10;
         this.var_2257 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1570 = param1;
         this.var_1542 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2504;
      }
      
      public function get itemType() : String
      {
         return this.var_1390;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1583;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1873;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2505;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2506;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2507;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2508;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2257;
      }
      
      public function get slotId() : String
      {
         return this.var_1570;
      }
      
      public function get songId() : int
      {
         return this.var_1918;
      }
      
      public function get extra() : int
      {
         return this.var_1542;
      }
   }
}

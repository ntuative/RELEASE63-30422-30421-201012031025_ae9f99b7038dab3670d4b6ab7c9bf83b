package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2135:int;
      
      private var var_1390:String;
      
      private var var_2139:int;
      
      private var var_2136:int;
      
      private var _category:int;
      
      private var var_1873:String;
      
      private var var_1542:int;
      
      private var var_2134:int;
      
      private var var_2137:int;
      
      private var var_2138:int;
      
      private var var_2140:int;
      
      private var var_2133:Boolean;
      
      private var var_2653:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2135 = param1;
         this.var_1390 = param2;
         this.var_2139 = param3;
         this.var_2136 = param4;
         this._category = param5;
         this.var_1873 = param6;
         this.var_1542 = param7;
         this.var_2134 = param8;
         this.var_2137 = param9;
         this.var_2138 = param10;
         this.var_2140 = param11;
         this.var_2133 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2135;
      }
      
      public function get itemType() : String
      {
         return this.var_1390;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2139;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2136;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1873;
      }
      
      public function get extra() : int
      {
         return this.var_1542;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2134;
      }
      
      public function get creationDay() : int
      {
         return this.var_2137;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2138;
      }
      
      public function get creationYear() : int
      {
         return this.var_2140;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2133;
      }
      
      public function get songID() : int
      {
         return this.var_1542;
      }
   }
}

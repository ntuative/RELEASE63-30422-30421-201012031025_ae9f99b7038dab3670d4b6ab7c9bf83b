package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_1873:String;
      
      protected var var_1542:Number;
      
      protected var var_2588:Boolean;
      
      protected var var_2587:Boolean;
      
      protected var var_2133:Boolean;
      
      protected var var_2586:Boolean;
      
      protected var var_2585:int;
      
      protected var var_2137:int;
      
      protected var var_2138:int;
      
      protected var var_2140:int;
      
      protected var var_1570:String;
      
      protected var var_1918:int;
      
      protected var var_880:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2133 = param5;
         this.var_2587 = param6;
         this.var_2588 = param7;
         this.var_2586 = param8;
         this.var_1873 = param9;
         this.var_1542 = param10;
         this.var_2585 = param11;
         this.var_2137 = param12;
         this.var_2138 = param13;
         this.var_2140 = param14;
         this.var_1570 = param15;
         this.var_1918 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_1873;
      }
      
      public function get extra() : Number
      {
         return this.var_1542;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2588;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2587;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2133;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2586;
      }
      
      public function get expires() : int
      {
         return this.var_2585;
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
      
      public function get slotId() : String
      {
         return this.var_1570;
      }
      
      public function get songId() : int
      {
         return this.var_1918;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_880 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_880;
      }
   }
}

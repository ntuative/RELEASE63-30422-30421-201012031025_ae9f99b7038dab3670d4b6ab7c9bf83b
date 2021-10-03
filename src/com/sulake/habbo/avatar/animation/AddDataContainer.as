package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var _id:String;
      
      private var var_1767:String;
      
      private var var_1027:String;
      
      private var var_1664:String;
      
      private var var_640:Number = 1;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         this._id = String(param1.@id);
         this.var_1767 = String(param1.@align);
         this.var_1027 = String(param1.@base);
         this.var_1664 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            this.var_640 = Number(_loc2_);
            if(this.var_640 > 1)
            {
               this.var_640 /= 100;
            }
         }
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function get align() : String
      {
         return this.var_1767;
      }
      
      public function get base() : String
      {
         return this.var_1027;
      }
      
      public function get ink() : String
      {
         return this.var_1664;
      }
      
      public function get blend() : Number
      {
         return this.var_640;
      }
      
      public function get isBlended() : Boolean
      {
         return this.var_640 != 1;
      }
   }
}

package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1498:int;
      
      private var var_1597:int;
      
      private var var_1886:int;
      
      private var var_1888:int;
      
      private var var_1881:int;
      
      private var _energy:int;
      
      private var var_1885:int;
      
      private var _nutrition:int;
      
      private var var_1883:int;
      
      private var var_1882:int;
      
      private var _ownerName:String;
      
      private var var_2016:int;
      
      private var var_1884:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1498;
      }
      
      public function get level() : int
      {
         return this.var_1597;
      }
      
      public function get levelMax() : int
      {
         return this.var_1886;
      }
      
      public function get experience() : int
      {
         return this.var_1888;
      }
      
      public function get experienceMax() : int
      {
         return this.var_1881;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_1885;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_1883;
      }
      
      public function get ownerId() : int
      {
         return this.var_1882;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2016;
      }
      
      public function get age() : int
      {
         return this.var_1884;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1498 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1597 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_1886 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_1888 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_1881 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_1885 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_1883 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_1882 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2016 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_1884 = param1;
      }
   }
}

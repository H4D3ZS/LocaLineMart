<?php
namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\CustomerAddress;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

class CustomerController extends Controller{
    
     public function address_list(Request $request)
    {
        return response()->json(CustomerAddress::where('user_id', $request->user()->id)->latest()->get(), 200);
    }

    public function info(Request $request)
    {
        $data = $request->user();
        
        $data['order_count'] =0;//(integer)$request->user()->orders->count();
        $data['member_since_days'] =(integer)$request->user()->created_at->diffInDays();
        //unset($data['orders']);
        return response()->json($data, 200);
    }
        public function add_new_address(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'contact_person_name' => 'required',
            'contact_person_number' => 'required',
            'address' => 'required',
          
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => "Error with the address"], 403);
        }


        $address = [
            'user_id' => $request->user()->id,
            'contact_person_name' => $request->contact_person_name,
            'contact_person_number' => $request->contact_person_number,
            'address' => $request->address,
            'longitude' => $request->longitude,
            'latitude' => $request->latitude,
            'created_at' => now(),
            'updated_at' => now()
        ];
        DB::table('customer_addresses')->insert($address);
        return response()->json(['message' => trans('messages.successfully_added')], 200);
    }
}
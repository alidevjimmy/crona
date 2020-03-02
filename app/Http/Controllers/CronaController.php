<?php

namespace App\Http\Controllers;

use App\Data;
use App\Http\Resources\DataCollection;
use App\Http\Resources\DataResource;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Http\Request;

class CronaController extends Controller
{
    // return all data
    public function show()
    {
        // get PERFECT data
        $data = DataResource::collection(Data::all())->additional([
            'totalConfirmed' => '',
            'totalDeaths' => '',
            'totalRecovered' => ''
        ]);
        // calculate total`s
        $totalConfirmed = $this->totalConfirmed($data);
        $totalDeaths = $this->totalDeaths($data);
        $totalRecovered = $this->totalRecovered($data);
        // set value for data
        $data->additional['totalConfirmed'] = $totalConfirmed;
        $data->additional['totalDeaths'] = $totalDeaths;
        $data->additional['totalRecovered'] = $totalRecovered;

        // return json data
        return $data;
    }

    // showByCountry is get data of country by id
    public function showByCountry($id)
    {
        // check if country id exists ... if yes return data else return my custom error
        try {
            // find or fail data
            $country = Data::findOrFail($id);
            // return data
            return new DataResource($country);
        }
        // return custom error
        catch (ModelNotFoundException $e) {
            // return error message
            return response()->json([
               'status' => 'error',
               'message' => 'کشور مورد نظر یافت نشد.'
            ]);
        }
    }

    /** calculate totalConfirmed
     * @param $data
     * @return integer
     */
    protected function totalConfirmed($data)
    {
        $total = 0;
        foreach ($data as $d){
            $total += $d->confirmed;
        }
        return $total;
    }

    /** calculate totalDeaths
     * @param $data
     * @return integer
     */
    protected function totalDeaths($data)
    {
        $total = 0;
        foreach ($data as $d){
            $total += $d->deaths;
        }
        return $total;
    }

    /** calculate totalRecovered
     * @param $data
     * @return integer
     */
    protected function totalRecovered($data)
    {
        $total = 0;
        foreach ($data as $d){
            $total += $d->recovered;
        }
        return $total;
    }
}

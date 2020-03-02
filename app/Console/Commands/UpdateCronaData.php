<?php

namespace App\Console\Commands;

use App\User;
use Illuminate\Console\Command;

class UpdateCronaData extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'crona:update';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'scrap data from https://gisanddata.maps.arcgis.com/apps/opsdashboard/index.html#/bda7594740fd40299423467b48e9ecf6 website';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $client = new \GuzzleHttp\Client();
        $response = $client->request('GET', 'https://services1.arcgis.com/0MSEUqKaxRlEPj5g/arcgis/rest/services/ncov_cases/FeatureServer/2/query?f=json&where=Confirmed%20%3E%200&returnGeometry=false&spatialRel=esriSpatialRelIntersects&outFields=*&orderByFields=Confirmed%20desc&resultOffset=0&resultRecordCount=100&cacheHint=true');
        $data_s = response()->json(json_decode($response->getBody())->features)->original;
        foreach ($data_s as $data) {
            \App\Data::updateOrCreate(
                [
                    'name' => $data->attributes->Country_Region
                ],
                [
                    'name' => $data->attributes->Country_Region,
                    'last_update' => $data->attributes->Last_Update,
                    'confirmed' => $data->attributes->Confirmed,
                    'deaths' => $data->attributes->Deaths,
                    'recovered' => $data->attributes->Recovered,
                ]
            );
        }
    }
}

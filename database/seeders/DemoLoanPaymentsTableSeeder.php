<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DemoLoanPaymentsTableSeeder extends Seeder
{
    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        \DB::table('loan_payments')->delete();

        \DB::table('loan_payments')->insert([
            0 => [
                'id' => 1,
                'reference_no' => 'DBBL-PAYMENT-1',
                'slug' => 'dbbl-payment-1',
                'amount' => 4522.73,
                'interest' => 356.06,
                'date' => today()->subMonths(2),
                'note' => null,
                'status' => 1,
                'image_path' => '',
                'created_at' => '2022-05-01 05:53:39',
                'updated_at' => '2022-05-01 05:53:39',
                'loan_id' => 1,
                'transaction_id' => 26,
                'created_by' => 1,
            ],
            1 => [
                'id' => 2,
                'reference_no' => 'DBBL-PAYMENT-2',
                'slug' => 'dbbl-payment-2',
                'amount' => 4522.73,
                'interest' => 356.06,
                'date' => today()->subMonths(1),
                'note' => null,
                'status' => 1,
                'image_path' => '',
                'created_at' => '2022-05-01 05:54:08',
                'updated_at' => '2022-05-01 05:54:08',
                'loan_id' => 1,
                'transaction_id' => 27,
                'created_by' => 1,
            ],
            2 => [
                'id' => 3,
                'reference_no' => 'DBBL-PAYMENT-3',
                'slug' => 'dbbl-payment-3',
                'amount' => 4522.73,
                'interest' => 356.06,
                'date' => today()->subMonths(1),
                'note' => null,
                'status' => 1,
                'image_path' => '',
                'created_at' => '2022-05-01 05:54:33',
                'updated_at' => '2022-05-01 05:54:33',
                'loan_id' => 1,
                'transaction_id' => 28,
                'created_by' => 1,
            ],
            3 => [
                'id' => 4,
                'reference_no' => 'DBBL-PAYMENT-4',
                'slug' => 'dbbl-payment-4',
                'amount' => 4522.73,
                'interest' => 356.06,
                'date' => today(),
                'note' => null,
                'status' => 1,
                'image_path' => '',
                'created_at' => '2022-05-01 05:54:52',
                'updated_at' => '2022-05-01 05:54:52',
                'loan_id' => 1,
                'transaction_id' => 29,
                'created_by' => 1,
            ],
        ]);
    }
}

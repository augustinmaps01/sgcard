@extends('Layouts.superadmin.layoutCustomer');
@section('content')
    <div class="container p-8 bg-white border shadow-lg">
        <table id="example">
            <caption class="p-5 text-2xl font-semibold text-left text-gray-900">
                Customer Information
            </caption>
            <thead>
                <tr>
                    <th>Photo</th>
                    <th>CID</th>
                    <th class="px-6 py-3">Savings Account No.</th>
                    <th class="px-6 py-3">Amount Open</th>
                    <th class="px-6 py-3">Lastname</th>
                    <th class="px-6 py-3">Firstname</th>
                    <th class="px-6 py-3">Middlename</th>
                    <th class="px-6 py-3">Suffix</th>
                    <th class="px-6 py-3">Address</th>
                    <th class="px-6 py-3">Birthdate</th>
                    <th class="px-6 py-3">Status</th>
                    <th class="px-6 py-3">Date Created</th>
                    <th class="px-6 py-3">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($data as $customerData)
                    <tr class="border-b">
                        <td class="px-6 py-4">
                            <img class="object-cover w-16 h-16 rounded-full" src="{{ asset($customerData->photo) }}"
                                alt="Picture">

                        </td>
                        <td class="px-6 py-4">{{ $customerData->client_ID }}</td>
                        <td class="px-6 py-4">{{ $customerData->svngs_accno }}</td>
                        <td class="px-6 py-4">{{ $customerData->amount_opened }}</td>
                        <td class="px-6 py-4">{{ $customerData->lname }}</td>
                        <td class="px-6 py-4">{{ $customerData->fname }}</td>
                        <td class="px-6 py-4">{{ $customerData->mname }}</td>
                        <td class="px-6 py-4">{{ $customerData->suffix }}</td>
                        <td class="px-6 py-4">{{ $customerData->address }}</td>
                        <td class="px-6 py-4">{{ $customerData->birthdate }}</td>
                        <td class="px-6 py-4">
                            <span
                                class="inline-block px-2 py-1 text-white bg-green-500 rounded">{{ $customerData->status }}</span>
                        </td>
                        <td class="px-6 py-4">{{ $customerData->created_at }}</td>
                        <td class="px-6 py-4">
                            <a href="#"
                                class="px-4 py-2 text-sm text-blue-600 bg-blue-100 rounded-full hover:bg-blue-200">Edit</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection

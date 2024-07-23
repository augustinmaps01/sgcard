// $(document).ready(function () {
//     $('#searchInput').on('input', function () {
//         var query = $(this).val();
//         if (query.length >= 3) {
//             $.ajax({
//                 url: "{{ route('search.customer') }}",
//                 method: 'GET',
//                 data: {
//                     search: query
//                 },
//                 success: function (data) {
//                     displaySearchResults(data);
//                 },
//                 error: function (xhr, status, error) {
//                     console.error('Error fetching search results:', error);
//                 }
//             });
//         } else {
//             clearSearchResults();
//         }
//     });

//     function displaySearchResults(results) {
//         var searchResultsDiv = $('#searchResults');
//         searchResultsDiv.empty();

//         if (results.length > 0) {
//             var ul = $('<ul></ul>');
//             $.each(results, function (index, result) {
//                 var li = $('<li></li>').text(result.name); // Assuming 'name' is the property to display
//                 ul.append(li);
//             });
//             searchResultsDiv.append(ul);
//         } else {
//             searchResultsDiv.text('No results found.');
//         }
//     }

//     function clearSearchResults() {
//         $('#searchResults').empty();
//     }
// });

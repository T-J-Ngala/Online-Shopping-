<?php
require_once('header.php');
?>


<div class="container">
  <div id="table-wrapper">
		<table id="products" class="display" cellspacing="0" width="100%">
			<thead>
      <tr>
				<th>Id</th>
				<th>Customer</th>
        <th>Email</th>
        <th>Phone Number</th>
        <th>Address</th>
        <th>Products</th>
				<th>Date</th>
        <th>Actions</th>
			</tr>
			</thead>
			<tfoot>
      <tr>
      <th>Id</th>
				<th>Customer</th>
        <th>Email</th>
        <th>Phone Number</th>
        <th>Address</th>
        <th>Products</th>
				<th>Date</th>
        <th>Actions</th>
			</tr>
			</tfoot>
			<tbody>
				<tr>

				</tr>
			</tbody>
		</table>
	</div>
</div>


<?php
//require_once('footer.php');
?>

<script>
  $(document).ready(function() {
    var dataSet = [];

    $.ajax({
      url: '/admin/api-orders',
      dataType: "json",
      error: function(request) {
        console.error("Error: ", request);
      },
      success: function(array) {
        for (var i = 0; i < array.length; i++) {
          var actions = `<div>
          <a class="btn btn-outline-success">Edit</a>
              <a class="btn btn-outline-danger">Delete</a>
            </div>`;
          dataSet.push([
            array[i].id,
            array[i].user,
            array[i].email,
            array[i].cell,
            array[i].address,
            array[i].products,
            array[i].created_at,
            actions
          ]);
        }

        var table = $('#products').DataTable({
          data: dataSet,
          responsive: true,
          scrollX: 200
        });
      }
    });
  });
</script>
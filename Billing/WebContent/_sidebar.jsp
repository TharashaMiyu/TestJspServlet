
<nav id="sidebar">
	<div class="sidebar-header" style="margin-right: 1px;">
		<div>
			<img src="images/b.jfif" class="image-cropper" alt="..." height="120" width="210">
		</div>
	</div>

	<ul class="list-unstyled components">

		<li>
		<a href="#pageSubmenu" style="color: #fafafa; background-color: transparent;" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
				<img src="images/homes.png" alt="" border=3 height=27 width=27 style="float: left; margin-right: 0.5em">Medicines
		</a>
			<ul class="collapse list-unstyled" id="pageSubmenu">
				<li>
				<a href="medicine_add.jsp" style="color: #fafafa; background-color: transparent;">Add medicines
				</a>
				</li>
						
				<li>
				<a href="medicine_update.jsp" style="color: #fafafa; background-color: transparent;">Update Medicines
				</a>
				</li>

<li>
				<a href="medicine_view.jsp" style="color: #fafafa; background-color: transparent;">View & Delete Medicines
				</a>
				</li>
			</ul>	
		</li>

		

		



		<li>
		<a href="calculate_bill.jsp" style="color: #fafafa; background-color: transparent;">
		<img src="images/reserve.png" alt="" border=3 height=27 width=27 style="float: left; margin-right: 0.5em"> 
		Calculate the bill
		</a>
		</li>
		


	</ul>
</nav>


<script>


var today = new Date().toISOString().split('T')[0];
document.getElementsByName("doba")[0].setAttribute('max', today);

function yesnoCheck() {
	if (document.getElementById('yesChecka').checked) {
		document.getElementById('ifYesa').style.visibility = 'visible';
	} else
		document.getElementById('ifYesa').style.visibility = 'hidden';

}

function my1() {
    $(document).ready(function(){
        $("#update").modal('show');
        $tr = $this.closest('tr');
        tr = $(this).closet('tr');
    });
}

</script>



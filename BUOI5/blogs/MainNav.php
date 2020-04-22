
          <div id ="nav">
             <!-- Main Nav -->
				<div id="nav-fixed">
					<div class="container">
						<!-- logo -->
						<div class="nav-logo">
							<a href="index.php" class="logo"><img src="./img/logo.png" alt=""></a>
						</div>
						<!-- /logo -->

						<!-- nav -->
						<ul class="nav-menu nav navbar-nav">
							<?php 
						
                                $i=1;
								foreach ($categories_cate as $cate) {
									# code...
								
                                  
							 ?>
							<li class="cat-<?=$i?>"><a href="category.php?id=<?= $cate['id']?>&cate=<?= $cate['title']?>"><?= $cate['title'] ?></a></li>
							<?php
							//die(); 
							$i++;
							if ($i==5) {
								# code..
								$i=1;
							}
                              }
							 ?>
						</ul>
						<!-- /nav -->

						<!-- search & aside toggle -->
						<div class="nav-btns">
							<button class="aside-btn"><i class="fa fa-bars"></i></button>
							<button class="search-btn"><i class="fa fa-search"></i></button>
							<div class="search-form">
								<input class="search-input" type="text" name="search" placeholder="Enter Your Search ...">
								<button class="search-close"><i class="fa fa-times"></i></button>
							</div>
						</div>
						<!-- /search & aside toggle -->
					</div>
				</div>
				<!-- /Main Nav -->
			</div>

			

			

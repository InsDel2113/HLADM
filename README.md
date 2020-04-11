<h1>HLADM</h1>
Half-Life: Alyx: Deathmatch
<hr>
<p>Currently, this is more focused on the Non-VR aspect of things, however I may add a officially VR supported mode in the future</p>
<p>The goal of this is to recreate HL2DM in the HLA Engine/S2</p>
<p>One of the issues with HLA's code is much of it is singleplayer only, therefore making some things unstable</p>
<h1>Installation</h1>
<p>Install Jan4V's Non-VR Patch (now fixes dedicated servers like mine did)</p>
<p>Jan4V's patch: <a href="https://github.com/Jan4V/hlnonvr">https://github.com/Jan4V/hlnonvr</a></p>
<p>Download this resporitory, and drag and drop hladm into YourSteamappsDir\Half-Life Alyx\game</p>
<p>Make a shortcut to your hlnonvr.exe with the launch options: <code>-game hladm -console -vconsole -developer -dev</code></p>
<p>OR FOR HOSTING OF A DEDICATED SERVER:</p><p> <code>-game hladm -dedicated -allow_no_lobby_connect -maxplayers 16 -tickrate 64</code><br>(make sure you type map mapname in server console, lobbys do not exist)</p>
<br>
<p>There is a included map, test_dm - It has all of the models precached and is good for testing</p>
<hr>
<p>You may have minor issues with getting it to work/installation<p>
<p>I plan to pack this all into some VPKs when finished, making installation easier and more reliable <br>- I plan to make a installer in the near future</p>
<h1>THIS IS STILL UNFINISHED!</h1>
<ul>
<li><p>It is actively being worked on by me and some others (credits in files), notably JJl77 and Jan4V<p></li>
<li><p>I plan to port HL2DM maps/etc to this<p></li>
</ul>
<p>Want to make a custom map? Make sure you check out the <a href="https://github.com/InsDel2113/HLADM/blob/master/making-a-map.md">map guidelines</a></p>
<h1>Things fixed:</h1>
<ul>
  <li>Weapons(including sounds)</li>
  <li>GUI</li>
  <li>Flashlight and jump fix</li>
  <li>MP Player models(randomized, may make selectable)</li>
  <li>TODO: MP Animations</li>
  <li>TODO: Scoreboard   </li>
  <li>TODO: All MP related VGUI(chat, etc)</li>
  <li>TODO: Custom/randomized map spawn locations</li>
  <li>TODO: Port HL2DM Maps, Models, and Materials</li>
  </ul>
 <h1>Contribution?</h1>
 <p>Yes! Make a pull request to the dev branch, and I'll happily look in to, and possibly accept it!</p>
 <p>(preferably with stuff listed as "TODO:" or any cool new additions, fixes, etc)</p>

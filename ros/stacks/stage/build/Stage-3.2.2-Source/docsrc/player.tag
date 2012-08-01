<?xml version='1.0' encoding='ISO-8859-1' standalone='yes' ?>
<tagfile>
  <compound kind="page">
    <name>index</name>
    <title>The Stage Robot Simulator</title>
    <filename>index</filename>
  </compound>
  <compound kind="file">
    <name>ancestor.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>ancestor_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
  </compound>
  <compound kind="file">
    <name>block.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>block_8cc</filename>
    <includes id="region_8hh" name="region.hh" local="yes" imported="no">region.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
    <member kind="function">
      <type>void</type>
      <name>swap</name>
      <anchorfile>block_8cc.html</anchorfile>
      <anchor>a34cd8fd4d99fbdd4ef97fcc94070b460</anchor>
      <arglist>(int &amp;a, int &amp;b)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>blockgroup.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>blockgroup_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
  </compound>
  <compound kind="file">
    <name>camera.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>camera_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
  </compound>
  <compound kind="file">
    <name>canvas.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>canvas_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="canvas_8hh" name="canvas.hh" local="yes" imported="no">canvas.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
    <includes id="texture__manager_8hh" name="texture_manager.hh" local="yes" imported="no">texture_manager.hh</includes>
    <includes id="region_8hh" name="region.hh" local="yes" imported="no">region.hh</includes>
    <includes id="file__manager_8hh" name="file_manager.hh" local="yes" imported="no">file_manager.hh</includes>
    <includes id="options__dlg_8hh" name="options_dlg.hh" local="yes" imported="no">options_dlg.hh</includes>
    <member kind="variable" static="yes">
      <type>static bool</type>
      <name>blur</name>
      <anchorfile>canvas_8cc.html</anchorfile>
      <anchor>a934561dc43201b78f69aee95a4ca2950</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static GLubyte</type>
      <name>checkImage</name>
      <anchorfile>canvas_8cc.html</anchorfile>
      <anchor>a83df8adf5cc391b27c96831bb501c6c6</anchor>
      <arglist>[checkImageHeight][checkImageWidth][4]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const int</type>
      <name>checkImageHeight</name>
      <anchorfile>canvas_8cc.html</anchorfile>
      <anchor>a3918d3e24a2ec0eb23b02a60d0627e28</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const int</type>
      <name>checkImageWidth</name>
      <anchorfile>canvas_8cc.html</anchorfile>
      <anchor>ac51660998592565a51404cc7169e516b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>GLuint</type>
      <name>checkTex</name>
      <anchorfile>canvas_8cc.html</anchorfile>
      <anchor>a1e30d98ff34c518b943bfb7d623b6203</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static bool</type>
      <name>init_done</name>
      <anchorfile>canvas_8cc.html</anchorfile>
      <anchor>ac28675e9f599e4310cf860d8cd396cea</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>canvas.hh</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>canvas_8hh</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="option_8hh" name="option.hh" local="yes" imported="no">option.hh</includes>
    <class kind="class">Stg::Canvas</class>
    <class kind="class">Stg::Canvas::GlColorStack</class>
    <namespace>Stg</namespace>
  </compound>
  <compound kind="file">
    <name>charger.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>charger_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
    <member kind="function">
      <type>void</type>
      <name>swap</name>
      <anchorfile>charger_8cc.html</anchorfile>
      <anchor>a4f2e3c5359dce426ee28f83f9abca5a7</anchor>
      <arglist>(double &amp;a, double &amp;b)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>color.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>color_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="file__manager_8hh" name="file_manager.hh" local="yes" imported="no">file_manager.hh</includes>
  </compound>
  <compound kind="file">
    <name>file_manager.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>file__manager_8cc</filename>
    <includes id="file__manager_8hh" name="file_manager.hh" local="yes" imported="no">file_manager.hh</includes>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <namespace>Stg</namespace>
    <member kind="function">
      <type>std::string</type>
      <name>searchDirs</name>
      <anchorfile>file__manager_8cc.html</anchorfile>
      <anchor>a3dbf47f00a77d6eda3ab0946c59c29aa</anchor>
      <arglist>(const std::vector&lt; std::string &gt; dirs, const std::string filename)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>file_manager.hh</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>file__manager_8hh</filename>
    <class kind="class">Stg::FileManager</class>
    <namespace>Stg</namespace>
  </compound>
  <compound kind="file">
    <name>gl.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>gl_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
  </compound>
  <compound kind="file">
    <name>glutgraphics.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>glutgraphics_8cc</filename>
    <member kind="function">
      <type>void</type>
      <name>display</name>
      <anchorfile>glutgraphics_8cc.html</anchorfile>
      <anchor>a4ea013001a5fb47853d0fab8f8de35cd</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>Driver *</type>
      <name>ExampleDriver_Init</name>
      <anchorfile>glutgraphics_8cc.html</anchorfile>
      <anchor>ac25a77daeb9c71ea10765d291d069051</anchor>
      <arglist>(ConfigFile *cf, int section)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ExampleDriver_Register</name>
      <anchorfile>glutgraphics_8cc.html</anchorfile>
      <anchor>a97bccf76547f0f3ba03e43ed91938cef</anchor>
      <arglist>(DriverTable *table)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>idle</name>
      <anchorfile>glutgraphics_8cc.html</anchorfile>
      <anchor>a01131b63acf241e9db91704d89ce15d2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>output</name>
      <anchorfile>glutgraphics_8cc.html</anchorfile>
      <anchor>afad44873826693e62b0670ede553c5ad</anchor>
      <arglist>(GLfloat x, GLfloat y, char *text)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>player_driver_init</name>
      <anchorfile>glutgraphics_8cc.html</anchorfile>
      <anchor>a2e34a981fb39a4a889c3c78fbf8ac665</anchor>
      <arglist>(DriverTable *table)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>redraw</name>
      <anchorfile>glutgraphics_8cc.html</anchorfile>
      <anchor>a855e2a2b57beb7c622c61218344ec568</anchor>
      <arglist>(int val)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>visible</name>
      <anchorfile>glutgraphics_8cc.html</anchorfile>
      <anchor>a62c7911bfbbd4f8b29d5cf6da88ddc87</anchor>
      <arglist>(int vis)</arglist>
    </member>
    <member kind="variable">
      <type>GLfloat</type>
      <name>angle1</name>
      <anchorfile>glutgraphics_8cc.html</anchorfile>
      <anchor>a5fc878b03fcbf2d88231c4db2ca9ff94</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>GLfloat</type>
      <name>angle2</name>
      <anchorfile>glutgraphics_8cc.html</anchorfile>
      <anchor>a5447c41247255118055c2e65c0b01e07</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static int</type>
      <name>argc</name>
      <anchorfile>glutgraphics_8cc.html</anchorfile>
      <anchor>ad1447518f4372828b8435ae82e48499e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static char *</type>
      <name>argv</name>
      <anchorfile>glutgraphics_8cc.html</anchorfile>
      <anchor>a67144f5e25315aba9d2d337a1c9e43d4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>GLfloat</type>
      <name>light0_ambient</name>
      <anchorfile>glutgraphics_8cc.html</anchorfile>
      <anchor>a05c7c3e5d681ac5771c387ac1d541ab0</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>GLfloat</type>
      <name>light0_diffuse</name>
      <anchorfile>glutgraphics_8cc.html</anchorfile>
      <anchor>adf30125a1e61c2a82fbb2cceaa5f8868</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>GLfloat</type>
      <name>light1_diffuse</name>
      <anchorfile>glutgraphics_8cc.html</anchorfile>
      <anchor>ad9f17685e763aae0a3ec0ec192e1b5b4</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>GLfloat</type>
      <name>light1_position</name>
      <anchorfile>glutgraphics_8cc.html</anchorfile>
      <anchor>a7d81810ec9df1335424bb09101506358</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>GLfloat</type>
      <name>light2_diffuse</name>
      <anchorfile>glutgraphics_8cc.html</anchorfile>
      <anchor>ad3e2b6bbe159a75da2bd4c62b296b780</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>GLfloat</type>
      <name>light2_position</name>
      <anchorfile>glutgraphics_8cc.html</anchorfile>
      <anchor>ae9c520daa719295194505ba59e0694de</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>s</name>
      <anchorfile>glutgraphics_8cc.html</anchorfile>
      <anchor>a874f74a4dc1c9a0cd9c6e0d79c298f55</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>logentry.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>logentry_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
  </compound>
  <compound kind="file">
    <name>logo.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>logo_8cc</filename>
    <member kind="variable">
      <type>GdkPixdata</type>
      <name>logo_pixbuf</name>
      <anchorfile>logo_8cc.html</anchorfile>
      <anchor>a80c6976c31467f09a401c9da573d667f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>lsp_test.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/test/</path>
    <filename>lsp__test_8cc</filename>
    <member kind="function">
      <type>int</type>
      <name>main</name>
      <anchorfile>lsp__test_8cc.html</anchorfile>
      <anchor>a0ddf1224851353fc92bfbff6f499fa97</anchor>
      <arglist>(int argc, char *argv[])</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>lsp_test_blobfinder.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/test/</path>
    <filename>lsp__test__blobfinder_8cc</filename>
    <includes id="lsp__test__blobfinder_8hh" name="lsp_test_blobfinder.hh" local="yes" imported="no">lsp_test_blobfinder.hh</includes>
  </compound>
  <compound kind="file">
    <name>lsp_test_blobfinder.hh</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/test/</path>
    <filename>lsp__test__blobfinder_8hh</filename>
    <includes id="lsp__test__proxy_8hh" name="lsp_test_proxy.hh" local="yes" imported="no">lsp_test_proxy.hh</includes>
    <class kind="class">lspTest::Blobfinder</class>
    <namespace>lspTest</namespace>
    <member kind="function">
      <type></type>
      <name>CPPUNIT_TEST_SUITE_REGISTRATION</name>
      <anchorfile>lsp__test__blobfinder_8hh.html</anchorfile>
      <anchor>af7d8ae26e1697774a3ac69b0f6ff8587</anchor>
      <arglist>(lspTest::Blobfinder)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>lsp_test_fiducial.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/test/</path>
    <filename>lsp__test__fiducial_8cc</filename>
    <includes id="lsp__test__fiducial_8hh" name="lsp_test_fiducial.hh" local="yes" imported="no">lsp_test_fiducial.hh</includes>
  </compound>
  <compound kind="file">
    <name>lsp_test_fiducial.hh</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/test/</path>
    <filename>lsp__test__fiducial_8hh</filename>
    <includes id="lsp__test__proxy_8hh" name="lsp_test_proxy.hh" local="yes" imported="no">lsp_test_proxy.hh</includes>
    <class kind="class">lspTest::Fiducial</class>
    <namespace>lspTest</namespace>
    <member kind="function">
      <type></type>
      <name>CPPUNIT_TEST_SUITE_REGISTRATION</name>
      <anchorfile>lsp__test__fiducial_8hh.html</anchorfile>
      <anchor>a770c10e3bb3a08ed57ad8fbd47d741ca</anchor>
      <arglist>(lspTest::Fiducial)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>lsp_test_laser.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/test/</path>
    <filename>lsp__test__laser_8cc</filename>
    <includes id="lsp__test__laser_8hh" name="lsp_test_laser.hh" local="yes" imported="no">lsp_test_laser.hh</includes>
  </compound>
  <compound kind="file">
    <name>lsp_test_laser.hh</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/test/</path>
    <filename>lsp__test__laser_8hh</filename>
    <includes id="lsp__test__proxy_8hh" name="lsp_test_proxy.hh" local="yes" imported="no">lsp_test_proxy.hh</includes>
    <class kind="class">lspTest::Laser</class>
    <namespace>lspTest</namespace>
    <member kind="function">
      <type></type>
      <name>CPPUNIT_TEST_SUITE_REGISTRATION</name>
      <anchorfile>lsp__test__laser_8hh.html</anchorfile>
      <anchor>af5872cf10910705127af3f9ceaafa390</anchor>
      <arglist>(lspTest::Laser)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>lsp_test_position2d.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/test/</path>
    <filename>lsp__test__position2d_8cc</filename>
    <includes id="lsp__test__position2d_8hh" name="lsp_test_position2d.hh" local="yes" imported="no">lsp_test_position2d.hh</includes>
  </compound>
  <compound kind="file">
    <name>lsp_test_position2d.hh</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/test/</path>
    <filename>lsp__test__position2d_8hh</filename>
    <includes id="lsp__test__proxy_8hh" name="lsp_test_proxy.hh" local="yes" imported="no">lsp_test_proxy.hh</includes>
    <class kind="class">lspTest::Position2D</class>
    <namespace>lspTest</namespace>
    <member kind="function">
      <type></type>
      <name>CPPUNIT_TEST_SUITE_REGISTRATION</name>
      <anchorfile>lsp__test__position2d_8hh.html</anchorfile>
      <anchor>a19cdeba9fedc9ba75763e0ec727d6575</anchor>
      <arglist>(lspTest::Position2D)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>lsp_test_proxy.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/test/</path>
    <filename>lsp__test__proxy_8cc</filename>
    <includes id="lsp__test__proxy_8hh" name="lsp_test_proxy.hh" local="yes" imported="no">lsp_test_proxy.hh</includes>
  </compound>
  <compound kind="file">
    <name>lsp_test_proxy.hh</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/test/</path>
    <filename>lsp__test__proxy_8hh</filename>
    <class kind="class">lspTest::Proxy</class>
    <namespace>lspTest</namespace>
  </compound>
  <compound kind="file">
    <name>lsp_test_simulation.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/test/</path>
    <filename>lsp__test__simulation_8cc</filename>
    <includes id="lsp__test__simulation_8hh" name="lsp_test_simulation.hh" local="yes" imported="no">lsp_test_simulation.hh</includes>
  </compound>
  <compound kind="file">
    <name>lsp_test_simulation.hh</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/test/</path>
    <filename>lsp__test__simulation_8hh</filename>
    <includes id="lsp__test__proxy_8hh" name="lsp_test_proxy.hh" local="yes" imported="no">lsp_test_proxy.hh</includes>
    <class kind="class">lspTest::Simulation</class>
    <namespace>lspTest</namespace>
    <member kind="function">
      <type></type>
      <name>CPPUNIT_TEST_SUITE_REGISTRATION</name>
      <anchorfile>lsp__test__simulation_8hh.html</anchorfile>
      <anchor>aab88ef924bedca5c02a359e035fd3f50</anchor>
      <arglist>(lspTest::Simulation)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>lsp_test_sonar.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/test/</path>
    <filename>lsp__test__sonar_8cc</filename>
    <includes id="lsp__test__sonar_8hh" name="lsp_test_sonar.hh" local="yes" imported="no">lsp_test_sonar.hh</includes>
  </compound>
  <compound kind="file">
    <name>lsp_test_sonar.hh</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/test/</path>
    <filename>lsp__test__sonar_8hh</filename>
    <includes id="lsp__test__proxy_8hh" name="lsp_test_proxy.hh" local="yes" imported="no">lsp_test_proxy.hh</includes>
    <class kind="class">lspTest::Sonar</class>
    <namespace>lspTest</namespace>
    <member kind="function">
      <type></type>
      <name>CPPUNIT_TEST_SUITE_REGISTRATION</name>
      <anchorfile>lsp__test__sonar_8hh.html</anchorfile>
      <anchor>a6a0485678de91b3e4ef64015b0192637</anchor>
      <arglist>(lspTest::Sonar)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>lsp_test_speech.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/test/</path>
    <filename>lsp__test__speech_8cc</filename>
    <includes id="lsp__test__speech_8hh" name="lsp_test_speech.hh" local="yes" imported="no">lsp_test_speech.hh</includes>
  </compound>
  <compound kind="file">
    <name>lsp_test_speech.hh</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/test/</path>
    <filename>lsp__test__speech_8hh</filename>
    <includes id="lsp__test__proxy_8hh" name="lsp_test_proxy.hh" local="yes" imported="no">lsp_test_proxy.hh</includes>
    <class kind="class">lspTest::Speech</class>
    <namespace>lspTest</namespace>
    <member kind="function">
      <type></type>
      <name>CPPUNIT_TEST_SUITE_REGISTRATION</name>
      <anchorfile>lsp__test__speech_8hh.html</anchorfile>
      <anchor>a6ff7d7e93ae8bc4e113d285891e96207</anchor>
      <arglist>(lspTest::Speech)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>main.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>main_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <member kind="function">
      <type>int</type>
      <name>main</name>
      <anchorfile>main_8cc.html</anchorfile>
      <anchor>a0ddf1224851353fc92bfbff6f499fa97</anchor>
      <arglist>(int argc, char *argv[])</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static struct option</type>
      <name>longopts</name>
      <anchorfile>main_8cc.html</anchorfile>
      <anchor>a94965649155359a4c4eb047af782bf22</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>USAGE</name>
      <anchorfile>main_8cc.html</anchorfile>
      <anchor>afacc46f19d491d10f29e257799fee6b6</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>model.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>model_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
    <member kind="function">
      <type>void</type>
      <name>pose_invert</name>
      <anchorfile>model_8cc.html</anchorfile>
      <anchor>a6d9b6769ae2c7d0187ed10de79285b2b</anchor>
      <arglist>(Pose *pose)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const double</type>
      <name>DEFAULT_FRICTION</name>
      <anchorfile>model_8cc.html</anchorfile>
      <anchor>a742da2c571c801cbeddd889d0b9b8b04</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>model_actuator.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>model__actuator_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
    <member kind="variable" static="yes">
      <type>static const double</type>
      <name>WATTS_BASE</name>
      <anchorfile>model__actuator_8cc.html</anchorfile>
      <anchor>a0ec10f1545dec240ffeae7ac6d20f696</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const double</type>
      <name>WATTS_KGMS</name>
      <anchorfile>model__actuator_8cc.html</anchorfile>
      <anchor>a6a712389622964225ae2df80837f5a86</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>model_blinkenlight.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>model__blinkenlight_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
    <includes id="option_8hh" name="option.hh" local="yes" imported="no">option.hh</includes>
  </compound>
  <compound kind="file">
    <name>model_blobfinder.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>model__blobfinder_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="option_8hh" name="option.hh" local="yes" imported="no">option.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>blob_match</name>
      <anchorfile>model__blobfinder_8cc.html</anchorfile>
      <anchor>a9959ac7c56aaa847b7c616dafc59f20e</anchor>
      <arglist>(Model *candidate, Model *finder, const void *dummy)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>ColorMatchIgnoreAlpha</name>
      <anchorfile>model__blobfinder_8cc.html</anchorfile>
      <anchor>a1f1a1b89f968651a938cc4023c43c80c</anchor>
      <arglist>(Color a, Color b)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const stg_radians_t</type>
      <name>DEFAULT_BLOBFINDERFOV</name>
      <anchorfile>model__blobfinder_8cc.html</anchorfile>
      <anchor>a30206b939e89f4bbc58ff82bd3069017</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unsigned int</type>
      <name>DEFAULT_BLOBFINDERINTERVAL_MS</name>
      <anchorfile>model__blobfinder_8cc.html</anchorfile>
      <anchor>a5e7e725e47c0d1e43f26bb84d9208981</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const stg_radians_t</type>
      <name>DEFAULT_BLOBFINDERPAN</name>
      <anchorfile>model__blobfinder_8cc.html</anchorfile>
      <anchor>a7809a0c4c62d0a5ffde63a643c1de23e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const stg_meters_t</type>
      <name>DEFAULT_BLOBFINDERRANGE</name>
      <anchorfile>model__blobfinder_8cc.html</anchorfile>
      <anchor>aa61641b208af360be30131174f1d5452</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unsigned int</type>
      <name>DEFAULT_BLOBFINDERRESOLUTION</name>
      <anchorfile>model__blobfinder_8cc.html</anchorfile>
      <anchor>a258276652071baf5adc8c09e1f898339</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unsigned int</type>
      <name>DEFAULT_BLOBFINDERSCANHEIGHT</name>
      <anchorfile>model__blobfinder_8cc.html</anchorfile>
      <anchor>afbd35100519d4c30de648dcdbd719c13</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unsigned int</type>
      <name>DEFAULT_BLOBFINDERSCANWIDTH</name>
      <anchorfile>model__blobfinder_8cc.html</anchorfile>
      <anchor>adc232f9565c211e547b307303098f17c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const stg_watts_t</type>
      <name>DEFAULT_BLOBFINDERWATTS</name>
      <anchorfile>model__blobfinder_8cc.html</anchorfile>
      <anchor>a76a9df86dd5631d03bb1a1d17b6a9154</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>model_callbacks.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>model__callbacks_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
  </compound>
  <compound kind="file">
    <name>model_camera.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>model__camera_8cc</filename>
    <includes id="canvas_8hh" name="canvas.hh" local="yes" imported="no">canvas.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
    <member kind="define">
      <type>#define</type>
      <name>CAMERA_FAR_CLIP</name>
      <anchorfile>model__camera_8cc.html</anchorfile>
      <anchor>a82239a118f04852e97fd9250d0d98bb4</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>CAMERA_HEIGHT</name>
      <anchorfile>model__camera_8cc.html</anchorfile>
      <anchor>a6ffdd1d90debad0734331c202651c0bc</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>CAMERA_NEAR_CLIP</name>
      <anchorfile>model__camera_8cc.html</anchorfile>
      <anchor>acdcb4ca4550d45798ea46b2cbd21b04f</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>cross</name>
      <anchorfile>model__camera_8cc.html</anchorfile>
      <anchor>aabb86d64fb160c17bdfd7ea06009e802</anchor>
      <arglist>(float &amp;x1, float &amp;y1, float &amp;z1, float x2, float y2, float z2)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const char</type>
      <name>DEFAULT_GEOM_COLOR</name>
      <anchorfile>model__camera_8cc.html</anchorfile>
      <anchor>a6e127dfc5a52aae494fae9ba338f5d85</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const float</type>
      <name>DEFAULT_HFOV</name>
      <anchorfile>model__camera_8cc.html</anchorfile>
      <anchor>ae7e1bdbd35db2537d7842c7d144d6985</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const Size</type>
      <name>DEFAULT_SIZE</name>
      <anchorfile>model__camera_8cc.html</anchorfile>
      <anchor>a8e87761d91d07019cf409c7c80872b77</anchor>
      <arglist>(0.1, 0.07, 0.05)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const float</type>
      <name>DEFAULT_VFOV</name>
      <anchorfile>model__camera_8cc.html</anchorfile>
      <anchor>aa2d9307738e73850b2fb1dd1c4a19ffd</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>model_draw.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>model__draw_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
    <includes id="canvas_8hh" name="canvas.hh" local="yes" imported="no">canvas.hh</includes>
    <includes id="texture__manager_8hh" name="texture_manager.hh" local="yes" imported="no">texture_manager.hh</includes>
    <member kind="variable" static="yes">
      <type>static const Color</type>
      <name>BUBBLE_BORDER</name>
      <anchorfile>model__draw_8cc.html</anchorfile>
      <anchor>a11ab4c384c72bd0cbd6fe1fecc7930dd</anchor>
      <arglist>(0, 0, 0)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const Color</type>
      <name>BUBBLE_FILL</name>
      <anchorfile>model__draw_8cc.html</anchorfile>
      <anchor>a41e8564f3ada6b25cc2e467b518ed91c</anchor>
      <arglist>(1.0, 0.8, 0.8)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const Color</type>
      <name>BUBBLE_TEXT</name>
      <anchorfile>model__draw_8cc.html</anchorfile>
      <anchor>ac4f185cd95d6c62c44c3ce3a2afa9279</anchor>
      <arglist>(0, 0, 0)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>model_fiducial.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>model__fiducial_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="option_8hh" name="option.hh" local="yes" imported="no">option.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>fiducial_raytrace_match</name>
      <anchorfile>model__fiducial_8cc.html</anchorfile>
      <anchor>aad05fa55dd3a14ac70b7bdec897eb4ef</anchor>
      <arglist>(Model *candidate, Model *finder, const void *dummy)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>model_getset.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>model__getset_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
  </compound>
  <compound kind="file">
    <name>model_gripper.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>model__gripper_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
    <includes id="option_8hh" name="option.hh" local="yes" imported="no">option.hh</includes>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>gripper_raytrace_match</name>
      <anchorfile>model__gripper_8cc.html</anchorfile>
      <anchor>ad4d8c1f29da9d9d828000ceac0af4a4b</anchor>
      <arglist>(Model *hit, Model *finder, const void *dummy)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>model_laser.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>model__laser_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
    <includes id="option_8hh" name="option.hh" local="yes" imported="no">option.hh</includes>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>laser_raytrace_match</name>
      <anchorfile>model__laser_8cc.html</anchorfile>
      <anchor>aabbb2052b1487cacf1664b7c7487ab2c</anchor>
      <arglist>(Model *hit, Model *finder, const void *dummy)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const char *</type>
      <name>DEFAULT_COLOR</name>
      <anchorfile>model__laser_8cc.html</anchorfile>
      <anchor>a67a2a60b029a3122ba26f4f900166dd2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const bool</type>
      <name>DEFAULT_FILLED</name>
      <anchorfile>model__laser_8cc.html</anchorfile>
      <anchor>af8d15b08b5b0a955b8e6bfbddcd8bd09</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const stg_radians_t</type>
      <name>DEFAULT_FOV</name>
      <anchorfile>model__laser_8cc.html</anchorfile>
      <anchor>a432684bc1a384e4794a1f6cd37cec31d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const stg_meters_t</type>
      <name>DEFAULT_MAXRANGE</name>
      <anchorfile>model__laser_8cc.html</anchorfile>
      <anchor>af760b22506508fbd926ff037e65527aa</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unsigned int</type>
      <name>DEFAULT_RESOLUTION</name>
      <anchorfile>model__laser_8cc.html</anchorfile>
      <anchor>aec6989a1d4c904e6d5f16e8f791e0ea4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unsigned int</type>
      <name>DEFAULT_SAMPLES</name>
      <anchorfile>model__laser_8cc.html</anchorfile>
      <anchor>a033e7d0bca8a9eb3740fa7613a979148</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const Size</type>
      <name>DEFAULT_SIZE</name>
      <anchorfile>model__laser_8cc.html</anchorfile>
      <anchor>aff859ec5504689abdbfe146bf667f68b</anchor>
      <arglist>(0.15, 0.15, 0.2)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const stg_watts_t</type>
      <name>DEFAULT_WATTS</name>
      <anchorfile>model__laser_8cc.html</anchorfile>
      <anchor>a3b667a7b4827a76e88cd5caa24b4aa05</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>model_lightindicator.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>model__lightindicator_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
  </compound>
  <compound kind="file">
    <name>model_load.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>model__load_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
    <includes id="file__manager_8hh" name="file_manager.hh" local="yes" imported="no">file_manager.hh</includes>
  </compound>
  <compound kind="file">
    <name>model_position.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>model__position_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
    <member kind="variable" static="yes">
      <type>static const double</type>
      <name>INTEGRATION_ERROR_MAX_A</name>
      <anchorfile>model__position_8cc.html</anchorfile>
      <anchor>abe2a6380ca2a0f54ec59cbe93153b1e4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const double</type>
      <name>INTEGRATION_ERROR_MAX_X</name>
      <anchorfile>model__position_8cc.html</anchorfile>
      <anchor>ade5fafa45c6d97dac39502f67f6ba3f9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const double</type>
      <name>INTEGRATION_ERROR_MAX_Y</name>
      <anchorfile>model__position_8cc.html</anchorfile>
      <anchor>a5ff584d4ae1e5643f43f08457e93e92d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const double</type>
      <name>INTEGRATION_ERROR_MAX_Z</name>
      <anchorfile>model__position_8cc.html</anchorfile>
      <anchor>a933394bca17c3801d370bd13e5d11824</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const double</type>
      <name>WATTS</name>
      <anchorfile>model__position_8cc.html</anchorfile>
      <anchor>aa6d8b2436b7ddb8ecfcca956a974001b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const double</type>
      <name>WATTS_KGMS</name>
      <anchorfile>model__position_8cc.html</anchorfile>
      <anchor>a6a712389622964225ae2df80837f5a86</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>model_props.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>model__props_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <member kind="define">
      <type>#define</type>
      <name>MATCH</name>
      <anchorfile>model__props_8cc.html</anchorfile>
      <anchor>a1509bff9cb2638f93f9f127d9d5b081e</anchor>
      <arglist>(A, B)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>model_ranger.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>model__ranger_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
    <includes id="option_8hh" name="option.hh" local="yes" imported="no">option.hh</includes>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>ranger_match</name>
      <anchorfile>model__ranger_8cc.html</anchorfile>
      <anchor>a3d899aa95a241ad48791da21b59b6bba</anchor>
      <arglist>(Model *candidate, Model *finder, const void *dummy)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const char</type>
      <name>RANGER_COLOR</name>
      <anchorfile>model__ranger_8cc.html</anchorfile>
      <anchor>abcf8c1a154145fc01ba2ae0a8ef70cf4</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const char</type>
      <name>RANGER_CONFIG_COLOR</name>
      <anchorfile>model__ranger_8cc.html</anchorfile>
      <anchor>ad086b79cb090c82bdedf27d9cf26290a</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const char</type>
      <name>RANGER_GEOM_COLOR</name>
      <anchorfile>model__ranger_8cc.html</anchorfile>
      <anchor>a007bcefdea03b2222738967018f3bd95</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const stg_meters_t</type>
      <name>RANGER_RANGEMAX</name>
      <anchorfile>model__ranger_8cc.html</anchorfile>
      <anchor>aa99b7c73dd54f5859c0925a030623e25</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const stg_meters_t</type>
      <name>RANGER_RANGEMIN</name>
      <anchorfile>model__ranger_8cc.html</anchorfile>
      <anchor>aea95306c70439ed0078ffa71e1ca00b7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unsigned int</type>
      <name>RANGER_RAYCOUNT</name>
      <anchorfile>model__ranger_8cc.html</anchorfile>
      <anchor>a90e5493d9d79e5f392cc9dc8c795a92c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unsigned int</type>
      <name>RANGER_SENSORCOUNT</name>
      <anchorfile>model__ranger_8cc.html</anchorfile>
      <anchor>a5cb692eb5f3cb8c6001b4ef2544bac0c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const Size</type>
      <name>RANGER_SIZE</name>
      <anchorfile>model__ranger_8cc.html</anchorfile>
      <anchor>ae1d74c37f64cfd45847a19777a284f14</anchor>
      <arglist>(0.4, 0.4, 0.05)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const Size</type>
      <name>RANGER_TRANSDUCER_SIZE</name>
      <anchorfile>model__ranger_8cc.html</anchorfile>
      <anchor>a4b7213b777ca264eb66030dc7c44e6e2</anchor>
      <arglist>(0.01, 0.04, 0.04)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const stg_watts_t</type>
      <name>RANGER_WATTSPERSENSOR</name>
      <anchorfile>model__ranger_8cc.html</anchorfile>
      <anchor>a0445524b012bac19574ad753a26de3d9</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>model_wifi.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>model__wifi_8cc</filename>
    <member kind="define">
      <type>#define</type>
      <name>STG_WIFI_WATTS</name>
      <anchorfile>model__wifi_8cc.html</anchorfile>
      <anchor>a8b8300dc08f901be172ff10ed1f86813</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>_model_update</name>
      <anchorfile>model__wifi_8cc.html</anchorfile>
      <anchor>adceeaf7ac407135ab9b0f5f7d40807c6</anchor>
      <arglist>(stg_model_t *mod, void *unused)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>gui_wifi_init</name>
      <anchorfile>model__wifi_8cc.html</anchorfile>
      <anchor>a97168581c81c48da29f3c8886b808dc2</anchor>
      <arglist>(stg_model_t *mod)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>wifi_init</name>
      <anchorfile>model__wifi_8cc.html</anchorfile>
      <anchor>a3f61ee74563fb68d860edef034a95426</anchor>
      <arglist>(stg_model_t *mod)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>wifi_load</name>
      <anchorfile>model__wifi_8cc.html</anchorfile>
      <anchor>ae33e511f822af56d426b14d77c89252c</anchor>
      <arglist>(stg_model_t *mod, void *unused)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>wifi_shutdown</name>
      <anchorfile>model__wifi_8cc.html</anchorfile>
      <anchor>aa73b8de20fd57aaa5b48b1f5b2c20566</anchor>
      <arglist>(stg_model_t *mod, void *unused)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>wifi_startup</name>
      <anchorfile>model__wifi_8cc.html</anchorfile>
      <anchor>a5e9b1e53ab5c5797201069d7515e3e62</anchor>
      <arglist>(stg_model_t *mod, void *unused)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>wifi_update</name>
      <anchorfile>model__wifi_8cc.html</anchorfile>
      <anchor>ac79f6100fb199aeabfe450b7710a48b6</anchor>
      <arglist>(stg_model_t *mod, void *unused)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>option.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>option_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
    <includes id="option_8hh" name="option.hh" local="yes" imported="no">option.hh</includes>
    <includes id="canvas_8hh" name="canvas.hh" local="yes" imported="no">canvas.hh</includes>
    <member kind="function">
      <type>Fl_Menu_Item *</type>
      <name>getMenuItem</name>
      <anchorfile>option_8cc.html</anchorfile>
      <anchor>ac4ecdb7ab8d67faa9cf477c89959028b</anchor>
      <arglist>(Fl_Menu_ *menu, int i)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>option.hh</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>option_8hh</filename>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
    <class kind="class">Stg::Option</class>
    <namespace>Stg</namespace>
  </compound>
  <compound kind="file">
    <name>options_dlg.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>options__dlg_8cc</filename>
    <includes id="options__dlg_8hh" name="options_dlg.hh" local="yes" imported="no">options_dlg.hh</includes>
    <namespace>Stg</namespace>
  </compound>
  <compound kind="file">
    <name>options_dlg.hh</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>options__dlg_8hh</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="option_8hh" name="option.hh" local="yes" imported="no">option.hh</includes>
    <class kind="class">Stg::OptionsDlg</class>
    <namespace>Stg</namespace>
  </compound>
  <compound kind="file">
    <name>p_actarray.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/</path>
    <filename>p__actarray_8cc</filename>
    <includes id="p__driver_8h" name="p_driver.h" local="yes" imported="no">p_driver.h</includes>
  </compound>
  <compound kind="file">
    <name>p_blobfinder.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/</path>
    <filename>p__blobfinder_8cc</filename>
    <includes id="p__driver_8h" name="p_driver.h" local="yes" imported="no">p_driver.h</includes>
  </compound>
  <compound kind="file">
    <name>p_bumper.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/</path>
    <filename>p__bumper_8cc</filename>
    <includes id="p__driver_8h" name="p_driver.h" local="yes" imported="no">p_driver.h</includes>
    <member kind="function">
      <type>int</type>
      <name>bumper_init</name>
      <anchorfile>p__bumper_8cc.html</anchorfile>
      <anchor>ad5b7c762bc4802ce5f6080265af3d2a5</anchor>
      <arglist>(stg_model_t *mod)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>p_driver.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/</path>
    <filename>p__driver_8cc</filename>
    <includes id="p__driver_8h" name="p_driver.h" local="yes" imported="no">p_driver.h</includes>
    <member kind="define">
      <type>#define</type>
      <name>DRIVER_ERROR</name>
      <anchorfile>p__driver_8cc.html</anchorfile>
      <anchor>a775722c667a8e24647d9911e961e0b7e</anchor>
      <arglist>(X)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>STG_DEFAULT_WORLDFILE</name>
      <anchorfile>p__driver_8cc.html</anchorfile>
      <anchor>a0078db252722fa95742f8ebef61ac221</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>player_driver_init</name>
      <anchorfile>p__driver_8cc.html</anchorfile>
      <anchor>a2e34a981fb39a4a889c3c78fbf8ac665</anchor>
      <arglist>(DriverTable *table)</arglist>
    </member>
    <member kind="function">
      <type>Driver *</type>
      <name>StgDriver_Init</name>
      <anchorfile>p__driver_8cc.html</anchorfile>
      <anchor>a570ed4c60a7e02755ef03a2da0afdb5e</anchor>
      <arglist>(ConfigFile *cf, int section)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>StgDriver_Register</name>
      <anchorfile>p__driver_8cc.html</anchorfile>
      <anchor>af365183eb708c94145ff62d32e35b3b9</anchor>
      <arglist>(DriverTable *table)</arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>copyright_notice</name>
      <anchorfile>p__driver_8cc.html</anchorfile>
      <anchor>a8af62dfe360aa4e720328eac7727694c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>PlayerTime *</type>
      <name>GlobalTime</name>
      <anchorfile>p__driver_8cc.html</anchorfile>
      <anchor>a3363fad7bf72c9eec9023a3cec616263</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>player_quiet_startup</name>
      <anchorfile>p__driver_8cc.html</anchorfile>
      <anchor>a2407216f91ce430cbe99dfc38ebfdc92</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>player_quit</name>
      <anchorfile>p__driver_8cc.html</anchorfile>
      <anchor>a0dad1857ea4cbd254e599964a6fa7c18</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>p_driver.h</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/</path>
    <filename>p__driver_8h</filename>
    <class kind="class">Interface</class>
    <class kind="class">InterfaceActArray</class>
    <class kind="class">InterfaceBlobfinder</class>
    <class kind="class">InterfaceBumper</class>
    <class kind="class">InterfaceFiducial</class>
    <class kind="class">InterfaceGraphics2d</class>
    <class kind="class">InterfaceGraphics3d</class>
    <class kind="class">InterfaceGripper</class>
    <class kind="class">InterfaceLaser</class>
    <class kind="class">InterfaceLocalize</class>
    <class kind="class">InterfaceMap</class>
    <class kind="class">InterfaceModel</class>
    <class kind="class">InterfacePosition</class>
    <class kind="class">InterfacePower</class>
    <class kind="class">InterfacePtz</class>
    <class kind="class">InterfaceSimulation</class>
    <class kind="class">InterfaceSonar</class>
    <class kind="class">InterfaceSpeech</class>
    <class kind="class">InterfaceWifi</class>
    <class kind="class">StgDriver</class>
    <class kind="class">StTime</class>
    <member kind="define">
      <type>#define</type>
      <name>DRIVER_ERROR</name>
      <anchorfile>p__driver_8h.html</anchorfile>
      <anchor>a775722c667a8e24647d9911e961e0b7e</anchor>
      <arglist>(X)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>p_fiducial.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/</path>
    <filename>p__fiducial_8cc</filename>
    <includes id="p__driver_8h" name="p_driver.h" local="yes" imported="no">p_driver.h</includes>
  </compound>
  <compound kind="file">
    <name>p_graphics.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/</path>
    <filename>p__graphics_8cc</filename>
    <includes id="p__driver_8h" name="p_driver.h" local="yes" imported="no">p_driver.h</includes>
  </compound>
  <compound kind="file">
    <name>p_gripper.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/</path>
    <filename>p__gripper_8cc</filename>
    <includes id="p__driver_8h" name="p_driver.h" local="yes" imported="no">p_driver.h</includes>
  </compound>
  <compound kind="file">
    <name>p_laser.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/</path>
    <filename>p__laser_8cc</filename>
    <includes id="p__driver_8h" name="p_driver.h" local="yes" imported="no">p_driver.h</includes>
  </compound>
  <compound kind="file">
    <name>p_localize.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/</path>
    <filename>p__localize_8cc</filename>
    <includes id="p__driver_8h" name="p_driver.h" local="yes" imported="no">p_driver.h</includes>
  </compound>
  <compound kind="file">
    <name>p_map.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/</path>
    <filename>p__map_8cc</filename>
    <includes id="p__driver_8h" name="p_driver.h" local="yes" imported="no">p_driver.h</includes>
    <member kind="function">
      <type>void</type>
      <name>render_line</name>
      <anchorfile>p__map_8cc.html</anchorfile>
      <anchor>a7a136e53e7d3f8178803224962b06957</anchor>
      <arglist>(int8_t *buf, int w, int h, int x1, int y1, int x2, int y2, int8_t val)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>p_position.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/</path>
    <filename>p__position_8cc</filename>
    <includes id="p__driver_8h" name="p_driver.h" local="yes" imported="no">p_driver.h</includes>
  </compound>
  <compound kind="file">
    <name>p_power.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/</path>
    <filename>p__power_8cc</filename>
    <includes id="p__driver_8h" name="p_driver.h" local="yes" imported="no">p_driver.h</includes>
    <member kind="function">
      <type>int</type>
      <name>energy_init</name>
      <anchorfile>p__power_8cc.html</anchorfile>
      <anchor>a33f943af5f16dbf636693027e9366207</anchor>
      <arglist>(stg_model_t *mod)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>p_ptz.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/</path>
    <filename>p__ptz_8cc</filename>
    <includes id="p__driver_8h" name="p_driver.h" local="yes" imported="no">p_driver.h</includes>
    <member kind="function">
      <type>int</type>
      <name>ptz_init</name>
      <anchorfile>p__ptz_8cc.html</anchorfile>
      <anchor>a112d97264ef01c449bc4c05e78cf6ff1</anchor>
      <arglist>(stg_model_t *mod)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>p_simulation.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/</path>
    <filename>p__simulation_8cc</filename>
    <includes id="p__driver_8h" name="p_driver.h" local="yes" imported="no">p_driver.h</includes>
    <member kind="define">
      <type>#define</type>
      <name>DRIVER_ERROR</name>
      <anchorfile>p__simulation_8cc.html</anchorfile>
      <anchor>a775722c667a8e24647d9911e961e0b7e</anchor>
      <arglist>(X)</arglist>
    </member>
    <member kind="variable">
      <type>PlayerTime *</type>
      <name>GlobalTime</name>
      <anchorfile>p__simulation_8cc.html</anchorfile>
      <anchor>a3363fad7bf72c9eec9023a3cec616263</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>player_quiet_startup</name>
      <anchorfile>p__simulation_8cc.html</anchorfile>
      <anchor>a2407216f91ce430cbe99dfc38ebfdc92</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>p_sonar.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/</path>
    <filename>p__sonar_8cc</filename>
    <includes id="p__driver_8h" name="p_driver.h" local="yes" imported="no">p_driver.h</includes>
  </compound>
  <compound kind="file">
    <name>p_speech.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/</path>
    <filename>p__speech_8cc</filename>
    <includes id="p__driver_8h" name="p_driver.h" local="yes" imported="no">p_driver.h</includes>
  </compound>
  <compound kind="file">
    <name>p_wifi.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/</path>
    <filename>p__wifi_8cc</filename>
    <includes id="p__driver_8h" name="p_driver.h" local="yes" imported="no">p_driver.h</includes>
    <member kind="function">
      <type>int</type>
      <name>wifi_init</name>
      <anchorfile>p__wifi_8cc.html</anchorfile>
      <anchor>a3f61ee74563fb68d860edef034a95426</anchor>
      <arglist>(stg_model_t *mod)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>powerpack.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>powerpack_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="texture__manager_8hh" name="texture_manager.hh" local="yes" imported="no">texture_manager.hh</includes>
  </compound>
  <compound kind="file">
    <name>puck.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>puck_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
  </compound>
  <compound kind="file">
    <name>region.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>region_8cc</filename>
    <includes id="region_8hh" name="region.hh" local="yes" imported="no">region.hh</includes>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>DrawBlock</name>
      <anchorfile>region_8cc.html</anchorfile>
      <anchor>a4ec8ed66002256849b9dc0e6f52fe4dc</anchor>
      <arglist>(GLfloat x, GLfloat y, GLfloat zmin, GLfloat zmax)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>region.hh</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>region_8hh</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <class kind="class">Stg::Cell</class>
    <class kind="class">Stg::Region</class>
    <class kind="class">Stg::SuperRegion</class>
    <namespace>Stg</namespace>
    <member kind="function">
      <type>const int32_t</type>
      <name>CELLMASK</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a92e4e7eb532cd76b7fb6cd08d6277cdc</anchor>
      <arglist>(~((~0x00)&lt;&lt; RBITS))</arglist>
    </member>
    <member kind="function">
      <type>int32_t</type>
      <name>GETCELL</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a5f7c3bca16962b4cf794b86e2f33de37</anchor>
      <arglist>(const int32_t x)</arglist>
    </member>
    <member kind="function">
      <type>int32_t</type>
      <name>GETREG</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a81917e219f4a9c9ec08bcc53d2a2b92d</anchor>
      <arglist>(const int32_t x)</arglist>
    </member>
    <member kind="function">
      <type>int32_t</type>
      <name>GETSREG</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>aa165e0f1b45cd28d2db4bd99853750a2</anchor>
      <arglist>(const int32_t x)</arglist>
    </member>
    <member kind="function">
      <type>const int32_t</type>
      <name>RBITS</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a332845aa7b999975409fdd41ab9b31b8</anchor>
      <arglist>(5)</arglist>
    </member>
    <member kind="function">
      <type>const int32_t</type>
      <name>REGIONMASK</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ac2b58bd9a04b890649ea3cc1fa949578</anchor>
      <arglist>(~((~0x00)&lt;&lt; SRBITS))</arglist>
    </member>
    <member kind="function">
      <type>const int32_t</type>
      <name>REGIONSIZE</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ad323d63cdbe752adfd811a4bea0393bc</anchor>
      <arglist>(REGIONWIDTH *REGIONWIDTH)</arglist>
    </member>
    <member kind="function">
      <type>const int32_t</type>
      <name>REGIONWIDTH</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a83b19ce4748047b1a09b6727aa6ec6b6</anchor>
      <arglist>(1&lt;&lt; RBITS)</arglist>
    </member>
    <member kind="function">
      <type>const int32_t</type>
      <name>SBITS</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a38d5c7afbd593c9f7286374cfb9b7754</anchor>
      <arglist>(5)</arglist>
    </member>
    <member kind="function">
      <type>const int32_t</type>
      <name>SRBITS</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ac1252e8add505351db22667f648ddcfb</anchor>
      <arglist>(RBITS+SBITS)</arglist>
    </member>
    <member kind="function">
      <type>const int32_t</type>
      <name>SUPERREGIONSIZE</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>adec4e23196a9a0e71ce9a3033b30bb30</anchor>
      <arglist>(SUPERREGIONWIDTH *SUPERREGIONWIDTH)</arglist>
    </member>
    <member kind="function">
      <type>const int32_t</type>
      <name>SUPERREGIONWIDTH</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a3bee0193c7eb3b568c1bd1424812b087</anchor>
      <arglist>(1&lt;&lt; SBITS)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>sourced.txt</name>
    <path>/Users/vaughan/PS/stage/trunk/docsrc/</path>
    <filename>sourced_8txt</filename>
  </compound>
  <compound kind="file">
    <name>stage.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>stage_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="file__manager_8hh" name="file_manager.hh" local="yes" imported="no">file_manager.hh</includes>
    <member kind="function" static="yes">
      <type>static uint8_t *</type>
      <name>pb_get_pixel</name>
      <anchorfile>stage_8cc.html</anchorfile>
      <anchor>a194a33bec136dbecf81be6a3e51ce5cd</anchor>
      <arglist>(Fl_Shared_Image *img, int x, int y)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>pb_pixel_is_set</name>
      <anchorfile>stage_8cc.html</anchorfile>
      <anchor>aeba5bd92949651870470feb1accaa299</anchor>
      <arglist>(Fl_Shared_Image *img, int x, int y, int threshold)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>pb_set_rect</name>
      <anchorfile>stage_8cc.html</anchorfile>
      <anchor>ac4644ce2de16f445571f10b55114cd04</anchor>
      <arglist>(Fl_Shared_Image *pb, int x, int y, int width, int height, uint8_t val)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static bool</type>
      <name>init_called</name>
      <anchorfile>stage_8cc.html</anchorfile>
      <anchor>a2f8dbb92db15e1934ad2ad99b4dd8780</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>stage.hh</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>stage_8hh</filename>
    <class kind="class">Stg::Ancestor</class>
    <class kind="class">Stg::Block</class>
    <class kind="class">Stg::BlockGroup</class>
    <class kind="class">Stg::Bounds</class>
    <class kind="class">Stg::Camera</class>
    <class kind="class">Stg::Color</class>
    <class kind="class">Stg::CtrlArgs</class>
    <class kind="class">Stg::Geom</class>
    <class kind="class">Stg::LogEntry</class>
    <class kind="class">Stg::Model</class>
    <class kind="class">Stg::Model::CallbackHooks</class>
    <class kind="class">Stg::Model::Flag</class>
    <class kind="class">Stg::Model::GuiState</class>
    <class kind="class">Stg::Model::RasterVis</class>
    <class kind="class">Stg::Model::stg_cb_t</class>
    <class kind="class">Stg::Model::TrailItem</class>
    <class kind="class">Stg::Model::Visibility</class>
    <class kind="class">Stg::ModelActuator</class>
    <class kind="class">Stg::ModelBlinkenlight</class>
    <class kind="class">Stg::ModelBlobfinder</class>
    <class kind="class">Stg::ModelBlobfinder::Blob</class>
    <class kind="class">Stg::ModelBlobfinder::Vis</class>
    <class kind="class">Stg::ModelCamera</class>
    <class kind="struct">Stg::ModelCamera::ColoredVertex</class>
    <class kind="class">Stg::ModelFiducial</class>
    <class kind="class">Stg::ModelFiducial::Fiducial</class>
    <class kind="class">Stg::ModelGripper</class>
    <class kind="struct">Stg::ModelGripper::config_t</class>
    <class kind="class">Stg::ModelLaser</class>
    <class kind="class">Stg::ModelLaser::Config</class>
    <class kind="class">Stg::ModelLaser::Sample</class>
    <class kind="class">Stg::ModelLaser::Vis</class>
    <class kind="class">Stg::ModelLightIndicator</class>
    <class kind="class">Stg::ModelPosition</class>
    <class kind="class">Stg::ModelPosition::PoseVis</class>
    <class kind="class">Stg::ModelPosition::Waypoint</class>
    <class kind="class">Stg::ModelPosition::WaypointVis</class>
    <class kind="class">Stg::ModelRanger</class>
    <class kind="class">Stg::ModelRanger::Sensor</class>
    <class kind="class">Stg::OrthoCamera</class>
    <class kind="class">Stg::PerspectiveCamera</class>
    <class kind="class">Stg::Pose</class>
    <class kind="class">Stg::PowerPack</class>
    <class kind="class">Stg::PowerPack::DissipationVis</class>
    <class kind="class">Stg::Ray</class>
    <class kind="class">Stg::RaytraceResult</class>
    <class kind="class">Stg::Size</class>
    <class kind="struct">Stg::stg_blinkenlight_t</class>
    <class kind="class">Stg::stg_bounds3d_t</class>
    <class kind="struct">Stg::stg_fov_t</class>
    <class kind="class">Stg::stg_point3_t</class>
    <class kind="class">Stg::stg_point_int_t</class>
    <class kind="class">Stg::stg_point_t</class>
    <class kind="struct">Stg::stg_rotrect_t</class>
    <class kind="class">Stg::StripPlotVis</class>
    <class kind="class">Stg::Velocity</class>
    <class kind="class">Stg::Visualizer</class>
    <class kind="class">Stg::World</class>
    <class kind="class">Stg::World::Event</class>
    <class kind="class">Stg::WorldGui</class>
    <namespace>Stg</namespace>
    <namespace>Stg::Gl</namespace>
    <member kind="define">
      <type>#define</type>
      <name>FOR_EACH</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>a3690e75319c25cee97a4f7b27669d5da</anchor>
      <arglist>(I, C)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_DEBUG</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>a1be6a6b98992b65d9fbc42817275f709</anchor>
      <arglist>(m)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_DEBUG1</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>a163300abcc60e47b47920a7d064701ad</anchor>
      <arglist>(m, a)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_DEBUG2</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>a9506de8c9a72ddb2e760aaf058079001</anchor>
      <arglist>(m, a, b)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_DEBUG3</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>ac9072259ea9d6f7f14f37162498802b1</anchor>
      <arglist>(m, a, b, c)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_DEBUG4</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>ab78baad08376a961ba2b8af57b3bc4b5</anchor>
      <arglist>(m, a, b, c, d)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_DEBUG5</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>a622e1a29d4196d3277bd5692a7757c1c</anchor>
      <arglist>(m, a, b, c, d, e)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_ERR</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>a1794556130a8b96d3ff49b331e44b1ee</anchor>
      <arglist>(m)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_ERR1</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>a3243f8f5c849349878779fcca01dd963</anchor>
      <arglist>(m, a)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_ERR2</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>ae0f8daa494d492ea7b40898cac50f03e</anchor>
      <arglist>(m, a, b)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_ERR3</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>a296f1c1ea561b22be71f024861bd1ae8</anchor>
      <arglist>(m, a, b, c)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_ERR4</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>abf071d45207584baa833d01b971ea827</anchor>
      <arglist>(m, a, b, c, d)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_ERR5</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>a93bec1ab4dc877ae3e658faf6cb7c1f6</anchor>
      <arglist>(m, a, b, c, d, e)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_MSG</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>ae54e2e02b8cb2a81878098443dfa2f1e</anchor>
      <arglist>(m)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_MSG1</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>a953b27657ac9c544f32b5a7f059fd8fe</anchor>
      <arglist>(m, a)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_MSG2</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>a37ed4dbd572053a8fab5e308d47a46ae</anchor>
      <arglist>(m, a, b)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_MSG3</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>aaa93447f53ea17f986e51baa57f3623b</anchor>
      <arglist>(m, a, b, c)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_MSG4</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>a3cead98d15b74d02832c38638493e4a5</anchor>
      <arglist>(m, a, b, c, d)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_MSG5</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>ad567e9b1d057f543b229dcd4c570b5aa</anchor>
      <arglist>(m, a, b, c, d, e)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_WARN</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>a0ed26982a2b2bd64bd5899422289abe7</anchor>
      <arglist>(m)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_WARN1</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>a65e89f05113fe0270446ce55a239916d</anchor>
      <arglist>(m, a)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_WARN2</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>a28e20a0826f4b420e13f38b592f71cd9</anchor>
      <arglist>(m, a, b)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_WARN3</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>a251e8f4bfce6341594ab1c870abdcca7</anchor>
      <arglist>(m, a, b, c)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_WARN4</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>a5dac4205f330fc3f837c45178901b8ce</anchor>
      <arglist>(m, a, b, c, d)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRINT_WARN5</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>ab9fdf000a5151a1683e9db78b3a37d58</anchor>
      <arglist>(m, a, b, c, d, e)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VAR</name>
      <anchorfile>stage_8hh.html</anchorfile>
      <anchor>aef0ee82d171cbf1169f4607b62f9fe63</anchor>
      <arglist>(V, init)</arglist>
    </member>
    <member kind="typedef">
      <type>std::set&lt; Block * &gt;</type>
      <name>BlockPtrSet</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ad1222dfb12ac0408dbd8f292e99b4092</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::vector&lt; Cell * &gt;</type>
      <name>CellPtrVec</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a67071608d422bdcf8e2520002c35151b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Model *(*</type>
      <name>creator_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a61fe512d932794a555f2c3e63d483cb5</anchor>
      <arglist>)(World *, Model *, const std::string &amp;type)</arglist>
    </member>
    <member kind="typedef">
      <type>std::set&lt; Model * &gt;</type>
      <name>ModelPtrSet</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>acd0048e15bcc6c6a96056280ee31591b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::vector&lt; Model * &gt;</type>
      <name>ModelPtrVec</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a38d0c02cc28c516d9c490835a1e903a7</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::vector&lt; stg_point_int_t &gt;</type>
      <name>PointIntVec</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>afc069872b10e240cd08492908f7c0d72</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>bool</type>
      <name>stg_bool_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>aad0a3102577a79fb97ed8d2ffa8a8029</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>uint32_t</type>
      <name>stg_id_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a8d60a92508b186c72f2440a3bab700b9</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>double</type>
      <name>stg_joules_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a62f63cf9894aeb0773f87243f7936a4a</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>double</type>
      <name>stg_kg_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a0a1a980b22aa0fe205f6fbf0a96ee6ac</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>double</type>
      <name>stg_meters_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ae8f54ca6f29ff0a82e6833e1d50152f4</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>int(*</type>
      <name>stg_model_callback_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a1482525ad18c0413dee3e16261f3a1b8</anchor>
      <arglist>)(Model *mod, void *user)</arglist>
    </member>
    <member kind="typedef">
      <type>unsigned long</type>
      <name>stg_msec_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a8bda84872fd2bae886376ae04bd5a0fb</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>double</type>
      <name>stg_radians_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a495b83f72f7b808c2a1e9f1e533d0006</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>bool(*</type>
      <name>stg_ray_test_func_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ae1381c6e3de690b414a92540aeeade63</anchor>
      <arglist>)(Model *candidate, Model *finder, const void *arg)</arglist>
    </member>
    <member kind="typedef">
      <type>RaytraceResult</type>
      <name>stg_raytrace_result_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a1236ed1c67712b6d2ac0e29235e1b1d8</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct timeval</type>
      <name>stg_time_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a7ac8daee0769af7fce9de558076a2410</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>uint64_t</type>
      <name>stg_usec_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a51ce4d080237c0fa550ae8fa9d6e44a5</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>double</type>
      <name>stg_watts_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a74a1b84a6640756d8069d2eaa0e4daea</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>int(*</type>
      <name>stg_world_callback_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ac303f983158a0251cc892b7f7e350cbc</anchor>
      <arglist>)(World *world, void *user)</arglist>
    </member>
    <member kind="enumvalue">
      <name>FiducialNone</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a83a97b5ba8f196c6a0da6ac2d63211eda4ae9ce1a8829ac09f8e729413cbfaa3b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>stg_laser_return_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a587145a8e112657abc51300abb389d64</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LaserTransparent</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a587145a8e112657abc51300abb389d64a7ddc682936c3db814e2fbfc68e92af61</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LaserVisible</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a587145a8e112657abc51300abb389d64a12bcd1d6aa09cb786e1a29a6b9932e78</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LaserBright</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a587145a8e112657abc51300abb389d64a001fc923686c96e9c747b192789e68d7</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>constrain</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>acdb575844fef1a304eb7ca5a62ec5522</anchor>
      <arglist>(double val, double minval, double maxval)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>coord_shift</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>a26c2886a1e05eef7a7441d6380179eaa</anchor>
      <arglist>(double x, double y, double z, double a)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_array</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>a46e92528fdfe042d44b9a344a420346a</anchor>
      <arglist>(float x, float y, float w, float h, float *data, size_t len, size_t offset)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_array</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>a81247441332f227465b8564a4b98d3d4</anchor>
      <arglist>(float x, float y, float w, float h, float *data, size_t len, size_t offset, float min, float max)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_centered_rect</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>a8154128a928200f8bbd141ca9da6b581</anchor>
      <arglist>(float x, float y, float dx, float dy)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_grid</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>a7021c3e586d12ec8dc6d94076b534ff2</anchor>
      <arglist>(stg_bounds3d_t vol)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_octagon</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>add03839ab05ba34a390b9b3b61ff5916</anchor>
      <arglist>(float x, float y, float w, float h, float m)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_octagon</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>aa15e3f6e14bd6ed40bf7d5035d2ebe73</anchor>
      <arglist>(float w, float h, float m)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_origin</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>abfd6f55019ff621993471ff7d8c73f18</anchor>
      <arglist>(double len)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_speech_bubble</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>ab1015e64f590d342c435f2543fc9e2d1</anchor>
      <arglist>(float x, float y, float z, const char *str)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_string</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>a8ab2c93ac9c6c2c4538f9effe2c2dab4</anchor>
      <arglist>(float x, float y, float z, const char *string)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_string_multiline</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>ab6592fda3cbcd1388e0cdc89230b963f</anchor>
      <arglist>(float x, float y, float w, float h, const char *string, Fl_Align align)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_vector</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>ae4d2a45581468af46f17a38de915a699</anchor>
      <arglist>(double x, double y, double z)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>dtor</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ad0d71ea2ba3f32c96398be40af8e8f05</anchor>
      <arglist>(double d)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>EraseAll</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a92c75c58a631170c78085e0fc40fd8a5</anchor>
      <arglist>(T thing, C &amp;cont)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Init</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a42592e46d158bb502087e84a6be606ec</anchor>
      <arglist>(int *argc, char **argv[])</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>InitDone</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a230fac7c4d418e1ec88975914e9af7b7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>normalize</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a3286ac1126b0271b382082295f5f11d9</anchor>
      <arglist>(double a)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>pose_inverse_shift</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>abcbb056b83779155ae51d3ba52eca334</anchor>
      <arglist>(const Pose &amp;pose)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>pose_shift</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>a05adf1436465b6b75d5c3ff4c823432d</anchor>
      <arglist>(const Pose &amp;pose)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RegisterModels</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a7a9e544a3b686f20835a56c53b8f14e6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>rtod</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>add89bf71be99c7d64bf895742ffd67a8</anchor>
      <arglist>(double r)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>sgn</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>afadbd482070d7a79d7f132d86b94d924</anchor>
      <arglist>(double a)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>sgn</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ac088b4cd291a1ffe77670c717357c6fd</anchor>
      <arglist>(int a)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>stg_rotrects_from_image_file</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a6e02c15d62f3419eaa0380949aa7848a</anchor>
      <arglist>(const char *filename, stg_rotrect_t **rects, unsigned int *rect_count, unsigned int *widthp, unsigned int *heightp)</arglist>
    </member>
    <member kind="function">
      <type>stg_point_t *</type>
      <name>stg_unit_square_points_create</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a90c07151f1aa8f7c2ee93539702e0f84</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>Version</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a52962c947a9ac0c21f0c4ed0697c847f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>AUTHORS</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ace6281855aca8d05bc4369fefad9a1d7</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const double</type>
      <name>billion</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a6b48d9934f07f652f5c2c628152510e7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>COPYRIGHT</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ab7b97c87a071be0d05dc83c4a09d9b2a</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>DESCRIPTION</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ab0123af3aa7274cb7b23ccef49ad059e</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>LICENSE</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ada51f5471e3d800c393197299cedb171</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const double</type>
      <name>million</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a2b2438eb22bf4523f996ff05bf780697</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_COLOR</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a1033547d6a7306ad1002dd4fbf3756c5</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_FIDUCIAL_RETURN</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>aac84c8246c7f768a2e74f5e7cc3f2247</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_GEOM</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a0ae8b300f8a7a7245d78fdd9a3b9bd87</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_GRIPPER_RETURN</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ae00c4f534813d21cd671f7ea7263c6eb</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_LASER_RETURN</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>add705894a23a23f26a4b959dfcb1e038</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_MASS</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a81c14ef4fa88639cb3767c80e2082ee1</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_OBSTACLE_RETURN</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a2200b645673bd0b7776c124639d17b00</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_POSE</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a38e5ec6e1170c2d0990b0360fac3eb65</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_PREFIX</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a4a43c94b4e8ffbc023e6b424060ebdb6</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_RANGER_RETURN</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a1503be3574cd3ce98cbbee3d5bd5e4e0</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_VELOCITY</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a33d8d02f443c887e178be3d40cafa9f4</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_WATTS</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a1a7015153c3154d04f8f2650a910964d</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const double</type>
      <name>thousand</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a50faac9c121b9c4496c631c32623a20d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>WEBSITE</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a8096fa6c31e3cbc1ac3f3a9ef7f9f696</anchor>
      <arglist>[]</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>stage.txt</name>
    <path>/Users/vaughan/PS/stage/trunk/docsrc/</path>
    <filename>stage_8txt</filename>
  </compound>
  <compound kind="file">
    <name>stagecpp.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>stagecpp_8cc</filename>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
    <member kind="function">
      <type>const char *</type>
      <name>wf_get_filename</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>a71962bb282ad8f9a66b13d6cc2b90cb8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>wf_get_parent_section</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>a0a74d767f1b9561d8f0ffb5581d61007</anchor>
      <arglist>(int section)</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>wf_get_section_type</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>a84c758d8781081139ca59606b2c06316</anchor>
      <arglist>(int section)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>wf_load</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>a1678b9b9612b986988528320fbb059c6</anchor>
      <arglist>(char *path)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>wf_property_exists</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>a89b70c1afd1677708a78c723521c4a45</anchor>
      <arglist>(int section, char *token)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>wf_read_angle</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>a9882760150c3dc6214a948405e542916</anchor>
      <arglist>(int section, char *token, double def)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>wf_read_float</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>af24f060bb0bc62d06cf749ade1a8a125</anchor>
      <arglist>(int section, char *token, double def)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>wf_read_int</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>a2592b68c78ce3f0838321b3fa118cfca</anchor>
      <arglist>(int section, char *token, int def)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>wf_read_length</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>a02fb9d6cc6df24999e3a1f6e6816f5c7</anchor>
      <arglist>(int section, char *token, double def)</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>wf_read_string</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>a09a3cdeab141e26720950dcd3e9c1120</anchor>
      <arglist>(int section, char *token, char *def)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>wf_read_tuple_angle</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>a21e85384a0e0ca96362bc22fc23df7c4</anchor>
      <arglist>(int section, char *token, int index, double def)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>wf_read_tuple_float</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>a1cf2aa549b34616bc68984f7a67da00f</anchor>
      <arglist>(int section, char *token, int index, double def)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>wf_read_tuple_length</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>a85e12aa0b125310cacaa3a86b332ea95</anchor>
      <arglist>(int section, char *token, int index, double def)</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>wf_read_tuple_string</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>accc74b23e13084fc00736dcf461e6cbc</anchor>
      <arglist>(int section, char *token, int index, char *def)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>wf_save</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>a0cecf8a80ba86e1ddfd5d1d566858292</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>wf_section_count</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>ac1d373622fd92d3867f0b0a0bfa20fc7</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>wf_warn_unused</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>a0ad880b204a20960d08a9d50847d41e8</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>wf_write_float</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>a3f6911effbbd3dbe1152b88c4ce5578d</anchor>
      <arglist>(int section, char *token, double value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>wf_write_int</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>a4f8ec0cdc9a7490d04ff80bbad75b7f7</anchor>
      <arglist>(int section, char *token, int value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>wf_write_length</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>abd0d2e599d04ed1bd6acaf117b9fbe92</anchor>
      <arglist>(int section, char *token, double value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>wf_write_string</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>a4999abf2f2f97d2456a10f9e5a2827cc</anchor>
      <arglist>(int section, char *token, char *value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>wf_write_tuple_angle</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>ad437aabf2ce7e8ba111eb42bc32356ec</anchor>
      <arglist>(int section, char *token, int index, double value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>wf_write_tuple_float</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>ac9dfc8fcbc2cbd38bbffb5d6c8d31caa</anchor>
      <arglist>(int section, char *token, int index, double value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>wf_write_tuple_length</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>ae0a24fab0ed061365a6da3d9de698241</anchor>
      <arglist>(int section, char *token, int index, double value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>wf_write_tuple_string</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>a94d05c851ef310cfebdd702416169a5d</anchor>
      <arglist>(int section, char *token, int index, char *value)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static CWorldFile</type>
      <name>wf</name>
      <anchorfile>stagecpp_8cc.html</anchorfile>
      <anchor>a236757a0ce44eab14cf9e1189c710d0b</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>stg_time.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/</path>
    <filename>stg__time_8cc</filename>
    <includes id="p__driver_8h" name="p_driver.h" local="yes" imported="no">p_driver.h</includes>
  </compound>
  <compound kind="file">
    <name>test.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>test_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <member kind="define">
      <type>#define</type>
      <name>POP</name>
      <anchorfile>test_8cc.html</anchorfile>
      <anchor>a0b06d6d6f5a540a62659a417de0ad69d</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>interact</name>
      <anchorfile>test_8cc.html</anchorfile>
      <anchor>a99cf33d33bdb0f261bab1c58765d9230</anchor>
      <arglist>(WorldGui *wg)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>main</name>
      <anchorfile>test_8cc.html</anchorfile>
      <anchor>a0ddf1224851353fc92bfbff6f499fa97</anchor>
      <arglist>(int argc, char *argv[])</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>test</name>
      <anchorfile>test_8cc.html</anchorfile>
      <anchor>afc63a1222a0ce71a79713d61450c2e2d</anchor>
      <arglist>(const char *str, Pose a, Pose b)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>test</name>
      <anchorfile>test_8cc.html</anchorfile>
      <anchor>a88156cd494ee81261de2371bce73d2d0</anchor>
      <arglist>(const char *str, double a, double b)</arglist>
    </member>
    <member kind="variable">
      <type>const double</type>
      <name>epsilon</name>
      <anchorfile>test_8cc.html</anchorfile>
      <anchor>ac29df3dcbefa1ce189e5990bde994025</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>texture_manager.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>texture__manager_8cc</filename>
    <includes id="texture__manager_8hh" name="texture_manager.hh" local="yes" imported="no">texture_manager.hh</includes>
    <includes id="file__manager_8hh" name="file_manager.hh" local="yes" imported="no">file_manager.hh</includes>
  </compound>
  <compound kind="file">
    <name>texture_manager.hh</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>texture__manager_8hh</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <class kind="class">Stg::TextureManager</class>
    <namespace>Stg</namespace>
  </compound>
  <compound kind="file">
    <name>typetable.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>typetable_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <member kind="function">
      <type>Model *</type>
      <name>Creator</name>
      <anchorfile>typetable_8cc.html</anchorfile>
      <anchor>ad4e426421cf22dd506cf874a1216006a</anchor>
      <arglist>(World *world, Model *parent, const std::string &amp;type)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Register</name>
      <anchorfile>typetable_8cc.html</anchorfile>
      <anchor>a950d78e0d2fd0afc5da140e46a4eaaf4</anchor>
      <arglist>(const std::string &amp;type, creator_t func)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>vis_strip.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>vis__strip_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="canvas_8hh" name="canvas.hh" local="yes" imported="no">canvas.hh</includes>
  </compound>
  <compound kind="file">
    <name>world.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>world_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="file__manager_8hh" name="file_manager.hh" local="yes" imported="no">file_manager.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
    <includes id="region_8hh" name="region.hh" local="yes" imported="no">region.hh</includes>
    <includes id="option_8hh" name="option.hh" local="yes" imported="no">option.hh</includes>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>_reload_cb</name>
      <anchorfile>world_8cc.html</anchorfile>
      <anchor>a84fc656824e003a8516821215ded9d35</anchor>
      <arglist>(Model *mod, void *dummy)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>_save_cb</name>
      <anchorfile>world_8cc.html</anchorfile>
      <anchor>a943e724c6427c25a418dd3397554161d</anchor>
      <arglist>(Model *mod, void *dummy)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>worldfile.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>worldfile_8cc</filename>
    <includes id="stage_8hh" name="stage.hh" local="yes" imported="no">stage.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
    <member kind="define">
      <type>#define</type>
      <name>isblank</name>
      <anchorfile>worldfile_8cc.html</anchorfile>
      <anchor>a01998fba90ef11074c10ba5c940d741b</anchor>
      <arglist>(a)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PARSE_ERR</name>
      <anchorfile>worldfile_8cc.html</anchorfile>
      <anchor>a8e8349697e0562220a5e874e9889fdbd</anchor>
      <arglist>(z, l)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>TOKEN_ERR</name>
      <anchorfile>worldfile_8cc.html</anchorfile>
      <anchor>a28a9621e399d3c38785d44be94cee3b2</anchor>
      <arglist>(z, l)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>PrintProp</name>
      <anchorfile>worldfile_8cc.html</anchorfile>
      <anchor>adef7e1999e5489604568f60ea1151cfc</anchor>
      <arglist>(const char *key, CProperty *prop)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>worldfile.hh</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>worldfile_8hh</filename>
    <class kind="class">Stg::CProperty</class>
    <class kind="class">Stg::Worldfile</class>
    <class kind="class">Stg::Worldfile::CEntity</class>
    <class kind="class">Stg::Worldfile::CMacro</class>
    <class kind="class">Stg::Worldfile::CToken</class>
    <namespace>Stg</namespace>
  </compound>
  <compound kind="file">
    <name>worldgui.cc</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>worldgui_8cc</filename>
    <includes id="canvas_8hh" name="canvas.hh" local="yes" imported="no">canvas.hh</includes>
    <includes id="region_8hh" name="region.hh" local="yes" imported="no">region.hh</includes>
    <includes id="worldfile_8hh" name="worldfile.hh" local="yes" imported="no">worldfile.hh</includes>
    <includes id="file__manager_8hh" name="file_manager.hh" local="yes" imported="no">file_manager.hh</includes>
    <includes id="options__dlg_8hh" name="options_dlg.hh" local="yes" imported="no">options_dlg.hh</includes>
    <member kind="function">
      <type>void</type>
      <name>aboutCloseCb</name>
      <anchorfile>worldgui_8cc.html</anchorfile>
      <anchor>ad1a9cc30c4112a9e7e7aa0202d97fac5</anchor>
      <arglist>(Fl_Window *win, Fl_Text_Display *textDisplay)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>aboutOKBtnCb</name>
      <anchorfile>worldgui_8cc.html</anchorfile>
      <anchor>ad172000cfd4f13288f6731e1c443ef21</anchor>
      <arglist>(Fl_Return_Button *btn, void *p)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>UpdateCallback</name>
      <anchorfile>worldgui_8cc.html</anchorfile>
      <anchor>a4fdf1898765b06a91f8375edf60f4e6b</anchor>
      <arglist>(WorldGui *world)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const char *</type>
      <name>AboutText</name>
      <anchorfile>worldgui_8cc.html</anchorfile>
      <anchor>a3e0f4a600974de60453eb0ea19075656</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const char *</type>
      <name>MoreHelpText</name>
      <anchorfile>worldgui_8cc.html</anchorfile>
      <anchor>af24a482529db8ee37c92e06b43926e2b</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>install</name>
    <title>Installation</title>
    <filename>install</filename>
  </compound>
  <compound kind="page">
    <name>release</name>
    <title>Release Notes</title>
    <filename>release</filename>
  </compound>
  <compound kind="page">
    <name>authors</name>
    <title>Authors</title>
    <filename>authors</filename>
  </compound>
  <compound kind="page">
    <name>help</name>
    <title>Getting Help</title>
    <filename>help</filename>
  </compound>
  <compound kind="group">
    <name>stage</name>
    <title>The Stage standalone robot simulator.</title>
    <filename>group__stage.html</filename>
  </compound>
  <compound kind="group">
    <name>model</name>
    <title>Model</title>
    <filename>group__model.html</filename>
    <subgroup>model_actuator</subgroup>
    <subgroup>model_blinkenlight</subgroup>
    <subgroup>model_blobfinder</subgroup>
    <subgroup>model_camera</subgroup>
    <subgroup>model_fiducial</subgroup>
    <subgroup>model_gripper</subgroup>
    <subgroup>model_laser</subgroup>
    <subgroup>model_position</subgroup>
    <subgroup>model_ranger</subgroup>
    <subgroup>model_wifi</subgroup>
  </compound>
  <compound kind="group">
    <name>model_actuator</name>
    <title>Actuator model</title>
    <filename>group__model__actuator.html</filename>
  </compound>
  <compound kind="group">
    <name>model_blinkenlight</name>
    <title>Blinkenlight model</title>
    <filename>group__model__blinkenlight.html</filename>
  </compound>
  <compound kind="group">
    <name>model_blobfinder</name>
    <title>Blobfinder model</title>
    <filename>group__model__blobfinder.html</filename>
  </compound>
  <compound kind="group">
    <name>model_camera</name>
    <title>Camera model</title>
    <filename>group__model__camera.html</filename>
  </compound>
  <compound kind="group">
    <name>model_fiducial</name>
    <title>Fiducial detector model</title>
    <filename>group__model__fiducial.html</filename>
  </compound>
  <compound kind="group">
    <name>model_gripper</name>
    <title>Gripper model</title>
    <filename>group__model__gripper.html</filename>
  </compound>
  <compound kind="group">
    <name>model_laser</name>
    <title>Laser model</title>
    <filename>group__model__laser.html</filename>
  </compound>
  <compound kind="group">
    <name>model_position</name>
    <title>Position model</title>
    <filename>group__model__position.html</filename>
  </compound>
  <compound kind="group">
    <name>model_ranger</name>
    <title>Ranger model</title>
    <filename>group__model__ranger.html</filename>
  </compound>
  <compound kind="group">
    <name>model_wifi</name>
    <title>Wifi model</title>
    <filename>group__model__wifi.html</filename>
  </compound>
  <compound kind="group">
    <name>world</name>
    <title>World</title>
    <filename>group__world.html</filename>
  </compound>
  <compound kind="group">
    <name>worldgui</name>
    <title>World with Graphical User Interface</title>
    <filename>group__worldgui.html</filename>
  </compound>
  <compound kind="group">
    <name>player</name>
    <title>libstageplugin -  simulation driver for Player</title>
    <filename>group__player.html</filename>
  </compound>
  <compound kind="class">
    <name>Interface</name>
    <filename>classInterface.html</filename>
    <member kind="function">
      <type></type>
      <name>Interface</name>
      <anchorfile>classInterface.html</anchorfile>
      <anchor>ab17fb4691e5805635fbd3ccd1e09049f</anchor>
      <arglist>(player_devaddr_t addr, StgDriver *driver, ConfigFile *cf, int section)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>ProcessMessage</name>
      <anchorfile>classInterface.html</anchorfile>
      <anchor>a7028cd8217dde317c048308a483122d0</anchor>
      <arglist>(QueuePointer &amp;resp_queue, player_msghdr_t *hdr, void *data)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Publish</name>
      <anchorfile>classInterface.html</anchorfile>
      <anchor>a1c1686724134811fb2b3e9e2678171d7</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Subscribe</name>
      <anchorfile>classInterface.html</anchorfile>
      <anchor>a78a516a8e4e0934886576cca336466c2</anchor>
      <arglist>(QueuePointer &amp;queue)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Subscribe</name>
      <anchorfile>classInterface.html</anchorfile>
      <anchor>ab67d8153f61a30a93b0859c2fbe98309</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Unsubscribe</name>
      <anchorfile>classInterface.html</anchorfile>
      <anchor>a8ed635923a3119ebc697993f169a96e0</anchor>
      <arglist>(QueuePointer &amp;queue)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Unsubscribe</name>
      <anchorfile>classInterface.html</anchorfile>
      <anchor>adf0193d09e2822751822df81553843e2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~Interface</name>
      <anchorfile>classInterface.html</anchorfile>
      <anchor>a752fd0b1d7abfcfaa6b2e4425a97af2d</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>player_devaddr_t</type>
      <name>addr</name>
      <anchorfile>classInterface.html</anchorfile>
      <anchor>a2ea64426a1dfdf78d02ea2168cca0154</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>StgDriver *</type>
      <name>driver</name>
      <anchorfile>classInterface.html</anchorfile>
      <anchor>a5d5320f38bad72a2d6540b0654ce8652</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>double</type>
      <name>last_publish_time</name>
      <anchorfile>classInterface.html</anchorfile>
      <anchor>af82e5c08e9fd11ad710fc8926aa6cbd2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>double</type>
      <name>publish_interval_msec</name>
      <anchorfile>classInterface.html</anchorfile>
      <anchor>a001412c9044a6bda5d2506fd7ae80f78</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>InterfaceActArray</name>
    <filename>classInterfaceActArray.html</filename>
    <base>InterfaceModel</base>
    <member kind="function">
      <type></type>
      <name>InterfaceActArray</name>
      <anchorfile>classInterfaceActArray.html</anchorfile>
      <anchor>afa33c7756e427e27351a0d85bcc4eaee</anchor>
      <arglist>(player_devaddr_t addr, StgDriver *driver, ConfigFile *cf, int section)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>ProcessMessage</name>
      <anchorfile>classInterfaceActArray.html</anchorfile>
      <anchor>a794f9bbc7071c097ab148ac825481e46</anchor>
      <arglist>(QueuePointer &amp;resp_queue, player_msghdr *hdr, void *data)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Publish</name>
      <anchorfile>classInterfaceActArray.html</anchorfile>
      <anchor>a40504d7a472e1cc6274bfc69501cfca7</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~InterfaceActArray</name>
      <anchorfile>classInterfaceActArray.html</anchorfile>
      <anchor>a5f1e1f3600204794766311bc02bafd78</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>InterfaceBlobfinder</name>
    <filename>classInterfaceBlobfinder.html</filename>
    <base>InterfaceModel</base>
    <member kind="function">
      <type></type>
      <name>InterfaceBlobfinder</name>
      <anchorfile>classInterfaceBlobfinder.html</anchorfile>
      <anchor>ac582387e6d8c0ece083b6afc4ca87593</anchor>
      <arglist>(player_devaddr_t addr, StgDriver *driver, ConfigFile *cf, int section)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>ProcessMessage</name>
      <anchorfile>classInterfaceBlobfinder.html</anchorfile>
      <anchor>a0fec10de297da8152d0458e9f3f5ef58</anchor>
      <arglist>(QueuePointer &amp;resp_queue, player_msghdr *hdr, void *data)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Publish</name>
      <anchorfile>classInterfaceBlobfinder.html</anchorfile>
      <anchor>accda47a65798e4f687f8b5b353c1a7a4</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~InterfaceBlobfinder</name>
      <anchorfile>classInterfaceBlobfinder.html</anchorfile>
      <anchor>a64be764268fc525770a894ebab346a79</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>InterfaceBumper</name>
    <filename>classInterfaceBumper.html</filename>
    <base>InterfaceModel</base>
    <member kind="function">
      <type></type>
      <name>InterfaceBumper</name>
      <anchorfile>classInterfaceBumper.html</anchorfile>
      <anchor>a20aa3da0b6fe939f4f519e380c9414c8</anchor>
      <arglist>(player_devaddr_t addr, StgDriver *driver, ConfigFile *cf, int section)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>ProcessMessage</name>
      <anchorfile>classInterfaceBumper.html</anchorfile>
      <anchor>ac135ddba7470f7c8aa66977670bc6db7</anchor>
      <arglist>(QueuePointer &amp;resp_queue, player_msghdr *hdr, void *data)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Publish</name>
      <anchorfile>classInterfaceBumper.html</anchorfile>
      <anchor>a94449f959ce61babb6b8a2bcdd428c13</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~InterfaceBumper</name>
      <anchorfile>classInterfaceBumper.html</anchorfile>
      <anchor>a2275d5b56a4a06ee6c81b0acee2b4de5</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>InterfaceFiducial</name>
    <filename>classInterfaceFiducial.html</filename>
    <base>InterfaceModel</base>
    <member kind="function">
      <type></type>
      <name>InterfaceFiducial</name>
      <anchorfile>classInterfaceFiducial.html</anchorfile>
      <anchor>af6e1008688a6a7fbb77b17227817f01c</anchor>
      <arglist>(player_devaddr_t addr, StgDriver *driver, ConfigFile *cf, int section)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>ProcessMessage</name>
      <anchorfile>classInterfaceFiducial.html</anchorfile>
      <anchor>a03b37a088174c809a3332dcc68234247</anchor>
      <arglist>(QueuePointer &amp;resp_queue, player_msghdr_t *hdr, void *data)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Publish</name>
      <anchorfile>classInterfaceFiducial.html</anchorfile>
      <anchor>ac4e3d9fb3017e55a15c6051596b16c74</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~InterfaceFiducial</name>
      <anchorfile>classInterfaceFiducial.html</anchorfile>
      <anchor>aa1931ca61030aad876605e813bae597e</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>InterfaceGraphics2d</name>
    <filename>classInterfaceGraphics2d.html</filename>
    <base>InterfaceModel</base>
    <member kind="function">
      <type></type>
      <name>InterfaceGraphics2d</name>
      <anchorfile>classInterfaceGraphics2d.html</anchorfile>
      <anchor>a40aefe0663ef0fc7826008524a730094</anchor>
      <arglist>(player_devaddr_t addr, StgDriver *driver, ConfigFile *cf, int section)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>ProcessMessage</name>
      <anchorfile>classInterfaceGraphics2d.html</anchorfile>
      <anchor>a81b6216f9f2eb5dac9c78d44ceec0016</anchor>
      <arglist>(QueuePointer &amp;resp_queue, player_msghdr *hdr, void *data)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Subscribe</name>
      <anchorfile>classInterfaceGraphics2d.html</anchorfile>
      <anchor>a2017457e12bb2a8014b154027f6355cf</anchor>
      <arglist>(QueuePointer &amp;queue)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Unsubscribe</name>
      <anchorfile>classInterfaceGraphics2d.html</anchorfile>
      <anchor>a5da164864755911e138ed88c0855c92f</anchor>
      <arglist>(QueuePointer &amp;queue)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~InterfaceGraphics2d</name>
      <anchorfile>classInterfaceGraphics2d.html</anchorfile>
      <anchor>aa5675ecf5ad0145ec3f0fdedfa6c4271</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>PlayerGraphics2dVis *</type>
      <name>vis</name>
      <anchorfile>classInterfaceGraphics2d.html</anchorfile>
      <anchor>a624822180ce3134e07fc0201513263b6</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>InterfaceGraphics3d</name>
    <filename>classInterfaceGraphics3d.html</filename>
    <base>InterfaceModel</base>
    <member kind="function">
      <type></type>
      <name>InterfaceGraphics3d</name>
      <anchorfile>classInterfaceGraphics3d.html</anchorfile>
      <anchor>ae00ffb2a5622fead2b8a36cd74ed92c5</anchor>
      <arglist>(player_devaddr_t addr, StgDriver *driver, ConfigFile *cf, int section)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>ProcessMessage</name>
      <anchorfile>classInterfaceGraphics3d.html</anchorfile>
      <anchor>a71cd5419785a23020fae6e2fb7a5f2c8</anchor>
      <arglist>(QueuePointer &amp;resp_queue, player_msghdr *hdr, void *data)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Subscribe</name>
      <anchorfile>classInterfaceGraphics3d.html</anchorfile>
      <anchor>aa991e58f7cb9d6614a1e2a6ca8622ffa</anchor>
      <arglist>(QueuePointer &amp;queue)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Unsubscribe</name>
      <anchorfile>classInterfaceGraphics3d.html</anchorfile>
      <anchor>ae3082b2e7232513ae5f7df70fb78ee07</anchor>
      <arglist>(QueuePointer &amp;queue)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~InterfaceGraphics3d</name>
      <anchorfile>classInterfaceGraphics3d.html</anchorfile>
      <anchor>aecd1ae48b953315abc5bf027d55c1983</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>PlayerGraphics3dVis *</type>
      <name>vis</name>
      <anchorfile>classInterfaceGraphics3d.html</anchorfile>
      <anchor>a98dbe3038f72ddc17ea0c6fa82aa74b9</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>InterfaceGripper</name>
    <filename>classInterfaceGripper.html</filename>
    <base>InterfaceModel</base>
    <member kind="function">
      <type></type>
      <name>InterfaceGripper</name>
      <anchorfile>classInterfaceGripper.html</anchorfile>
      <anchor>a3f5007ef7869ce5f4d0f4a143247f693</anchor>
      <arglist>(player_devaddr_t addr, StgDriver *driver, ConfigFile *cf, int section)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>ProcessMessage</name>
      <anchorfile>classInterfaceGripper.html</anchorfile>
      <anchor>a9edf2b739118614b1845f4d4253fa442</anchor>
      <arglist>(QueuePointer &amp;resp_queue, player_msghdr_t *hdr, void *data)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Publish</name>
      <anchorfile>classInterfaceGripper.html</anchorfile>
      <anchor>a79c08eeaf48cb67e152de0afd1a9f7a8</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~InterfaceGripper</name>
      <anchorfile>classInterfaceGripper.html</anchorfile>
      <anchor>ae159fd84d81a4df2fa3573eba920a65f</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>InterfaceLaser</name>
    <filename>classInterfaceLaser.html</filename>
    <base>InterfaceModel</base>
    <member kind="function">
      <type></type>
      <name>InterfaceLaser</name>
      <anchorfile>classInterfaceLaser.html</anchorfile>
      <anchor>ab3160f2763e93eb6216361c13c8d3c8f</anchor>
      <arglist>(player_devaddr_t addr, StgDriver *driver, ConfigFile *cf, int section)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>ProcessMessage</name>
      <anchorfile>classInterfaceLaser.html</anchorfile>
      <anchor>a35e8550d33bc74401d9fc0f6698a5e94</anchor>
      <arglist>(QueuePointer &amp;resp_queue, player_msghdr_t *hdr, void *data)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Publish</name>
      <anchorfile>classInterfaceLaser.html</anchorfile>
      <anchor>a396845355a4147f8655ae8c4238c1160</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~InterfaceLaser</name>
      <anchorfile>classInterfaceLaser.html</anchorfile>
      <anchor>a2f843f24c3e43b9aee3c82fc90e7a529</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>InterfaceLocalize</name>
    <filename>classInterfaceLocalize.html</filename>
    <base>InterfaceModel</base>
    <member kind="function">
      <type></type>
      <name>InterfaceLocalize</name>
      <anchorfile>classInterfaceLocalize.html</anchorfile>
      <anchor>ac18d58b9b089d97e4d58771583a69772</anchor>
      <arglist>(player_devaddr_t addr, StgDriver *driver, ConfigFile *cf, int section)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>ProcessMessage</name>
      <anchorfile>classInterfaceLocalize.html</anchorfile>
      <anchor>a28a8d5e02df35c83590d0b07da65d4e6</anchor>
      <arglist>(QueuePointer &amp;resp_queue, player_msghdr_t *hdr, void *data)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Publish</name>
      <anchorfile>classInterfaceLocalize.html</anchorfile>
      <anchor>afb42ef45e0d0ff4e8ff2bed4e02b12f2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~InterfaceLocalize</name>
      <anchorfile>classInterfaceLocalize.html</anchorfile>
      <anchor>af67fe22fca1c00c4257f456ccc8cdb80</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>InterfaceMap</name>
    <filename>classInterfaceMap.html</filename>
    <base>InterfaceModel</base>
    <member kind="function">
      <type>int</type>
      <name>HandleMsgReqData</name>
      <anchorfile>classInterfaceMap.html</anchorfile>
      <anchor>a971145588a6092aebfe6d0abff592044</anchor>
      <arglist>(QueuePointer &amp;resp_queue, player_msghdr *hdr, void *data)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>HandleMsgReqInfo</name>
      <anchorfile>classInterfaceMap.html</anchorfile>
      <anchor>aabfdce561e6f4552c0850ef8c6e274bd</anchor>
      <arglist>(QueuePointer &amp;resp_queue, player_msghdr *hdr, void *data)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>InterfaceMap</name>
      <anchorfile>classInterfaceMap.html</anchorfile>
      <anchor>abeefa7e0710b48ed4f398024ab3c93c0</anchor>
      <arglist>(player_devaddr_t addr, StgDriver *driver, ConfigFile *cf, int section)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>ProcessMessage</name>
      <anchorfile>classInterfaceMap.html</anchorfile>
      <anchor>a87c6b6601b28b6fc776ef7751d5d7025</anchor>
      <arglist>(QueuePointer &amp;resp_queue, player_msghdr *hdr, void *data)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~InterfaceMap</name>
      <anchorfile>classInterfaceMap.html</anchorfile>
      <anchor>a7d6e717336c9c7336a47c042d13d1fe5</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>InterfaceModel</name>
    <filename>classInterfaceModel.html</filename>
    <base>Interface</base>
    <member kind="function">
      <type></type>
      <name>InterfaceModel</name>
      <anchorfile>classInterfaceModel.html</anchorfile>
      <anchor>af8ef578120e62a7e942952b5e0924a55</anchor>
      <arglist>(player_devaddr_t addr, StgDriver *driver, ConfigFile *cf, int section, const std::string &amp;type)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Subscribe</name>
      <anchorfile>classInterfaceModel.html</anchorfile>
      <anchor>ad0bb9bcd3601ace08eefdc896d6408d9</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Unsubscribe</name>
      <anchorfile>classInterfaceModel.html</anchorfile>
      <anchor>aba2e55f31bcea64762b358dd8333b962</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~InterfaceModel</name>
      <anchorfile>classInterfaceModel.html</anchorfile>
      <anchor>ae28043d7c1b007659bc9d81ce69ec684</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>Stg::Model *</type>
      <name>mod</name>
      <anchorfile>classInterfaceModel.html</anchorfile>
      <anchor>a0b41e2769ef22a9240c382c5ebbedf0f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>InterfacePosition</name>
    <filename>classInterfacePosition.html</filename>
    <base>InterfaceModel</base>
    <member kind="function">
      <type></type>
      <name>InterfacePosition</name>
      <anchorfile>classInterfacePosition.html</anchorfile>
      <anchor>a27a57d9f8e89ee29f3279ff6351213cc</anchor>
      <arglist>(player_devaddr_t addr, StgDriver *driver, ConfigFile *cf, int section)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>ProcessMessage</name>
      <anchorfile>classInterfacePosition.html</anchorfile>
      <anchor>a6f9a8c2c2a677d4326ff4c2cdafe80ea</anchor>
      <arglist>(QueuePointer &amp;resp_queue, player_msghdr_t *hdr, void *data)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Publish</name>
      <anchorfile>classInterfacePosition.html</anchorfile>
      <anchor>a654e2846a9b2387269cef3d1ad5de70f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~InterfacePosition</name>
      <anchorfile>classInterfacePosition.html</anchorfile>
      <anchor>ab39248c754a26904278ba5d90fecca9d</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>InterfacePower</name>
    <filename>classInterfacePower.html</filename>
    <base>InterfaceModel</base>
    <member kind="function">
      <type></type>
      <name>InterfacePower</name>
      <anchorfile>classInterfacePower.html</anchorfile>
      <anchor>a94eee4e552a36e3a25d29fa6c94abb54</anchor>
      <arglist>(player_devaddr_t addr, StgDriver *driver, ConfigFile *cf, int section)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>ProcessMessage</name>
      <anchorfile>classInterfacePower.html</anchorfile>
      <anchor>a3b21e60be5fb47738d21372b48e623b6</anchor>
      <arglist>(QueuePointer &amp;resp_queue, player_msghdr *hdr, void *data)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Publish</name>
      <anchorfile>classInterfacePower.html</anchorfile>
      <anchor>a56dd2525fe0d50b64071d1b146aaad27</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~InterfacePower</name>
      <anchorfile>classInterfacePower.html</anchorfile>
      <anchor>aff55603765c7d4485a5ecb108e416eee</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>InterfacePtz</name>
    <filename>classInterfacePtz.html</filename>
    <base>InterfaceModel</base>
    <member kind="function">
      <type></type>
      <name>InterfacePtz</name>
      <anchorfile>classInterfacePtz.html</anchorfile>
      <anchor>aa462b1f1c6eb82aada322dcefb11ff01</anchor>
      <arglist>(player_devaddr_t addr, StgDriver *driver, ConfigFile *cf, int section)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>ProcessMessage</name>
      <anchorfile>classInterfacePtz.html</anchorfile>
      <anchor>a232f60f50a10d26b2ae7c934945a5424</anchor>
      <arglist>(QueuePointer &amp;resp_queue, player_msghdr *hdr, void *data)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Publish</name>
      <anchorfile>classInterfacePtz.html</anchorfile>
      <anchor>adc7a3f7ac8cea1bfadb93cd85e86b38d</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~InterfacePtz</name>
      <anchorfile>classInterfacePtz.html</anchorfile>
      <anchor>a04509ac1f5a65d88195b974cb57074c3</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>InterfaceSimulation</name>
    <filename>classInterfaceSimulation.html</filename>
    <base>Interface</base>
    <member kind="function">
      <type></type>
      <name>InterfaceSimulation</name>
      <anchorfile>classInterfaceSimulation.html</anchorfile>
      <anchor>a6aa6cbaaebf0bad085f7ed328d738014</anchor>
      <arglist>(player_devaddr_t addr, StgDriver *driver, ConfigFile *cf, int section)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>ProcessMessage</name>
      <anchorfile>classInterfaceSimulation.html</anchorfile>
      <anchor>a62970749b652a640d7e2c221d68c896e</anchor>
      <arglist>(QueuePointer &amp;resp_queue, player_msghdr_t *hdr, void *data)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~InterfaceSimulation</name>
      <anchorfile>classInterfaceSimulation.html</anchorfile>
      <anchor>a7beb1f6d1a9a966684aee1e84b2dbe06</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>InterfaceSonar</name>
    <filename>classInterfaceSonar.html</filename>
    <base>InterfaceModel</base>
    <member kind="function">
      <type></type>
      <name>InterfaceSonar</name>
      <anchorfile>classInterfaceSonar.html</anchorfile>
      <anchor>a511a33a5c55ff6452a484f8c5542af39</anchor>
      <arglist>(player_devaddr_t addr, StgDriver *driver, ConfigFile *cf, int section)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>ProcessMessage</name>
      <anchorfile>classInterfaceSonar.html</anchorfile>
      <anchor>a88f158e671d870c6c33e6c324d7231df</anchor>
      <arglist>(QueuePointer &amp;resp_queue, player_msghdr *hdr, void *data)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Publish</name>
      <anchorfile>classInterfaceSonar.html</anchorfile>
      <anchor>a77222a828d134d0155d02d93d8b7dfef</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~InterfaceSonar</name>
      <anchorfile>classInterfaceSonar.html</anchorfile>
      <anchor>a1ce3f5ab1ab10b27c053ab330082cb57</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>InterfaceSpeech</name>
    <filename>classInterfaceSpeech.html</filename>
    <base>InterfaceModel</base>
    <member kind="function">
      <type></type>
      <name>InterfaceSpeech</name>
      <anchorfile>classInterfaceSpeech.html</anchorfile>
      <anchor>ab57333ed239249ea4a222ebd2ec780e5</anchor>
      <arglist>(player_devaddr_t addr, StgDriver *driver, ConfigFile *cf, int section)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>ProcessMessage</name>
      <anchorfile>classInterfaceSpeech.html</anchorfile>
      <anchor>a362f5ba866411b501997aaa2bddecbd6</anchor>
      <arglist>(QueuePointer &amp;resp_queue, player_msghdr_t *hdr, void *data)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Publish</name>
      <anchorfile>classInterfaceSpeech.html</anchorfile>
      <anchor>ae057b14c140bf9fb68ca475e3ce14619</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~InterfaceSpeech</name>
      <anchorfile>classInterfaceSpeech.html</anchorfile>
      <anchor>ab39fb1c9cdf7aedea0c1571084db66b0</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>InterfaceWifi</name>
    <filename>classInterfaceWifi.html</filename>
    <base>InterfaceModel</base>
    <member kind="function">
      <type></type>
      <name>InterfaceWifi</name>
      <anchorfile>classInterfaceWifi.html</anchorfile>
      <anchor>a1bd9c3374682dfdd673c5c849506c6d8</anchor>
      <arglist>(player_devaddr_t addr, StgDriver *driver, ConfigFile *cf, int section)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>ProcessMessage</name>
      <anchorfile>classInterfaceWifi.html</anchorfile>
      <anchor>a93e4b63e5d6af73f72c219ac72b48644</anchor>
      <arglist>(QueuePointer &amp;resp_queue, player_msghdr_t *hdr, void *data)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Publish</name>
      <anchorfile>classInterfaceWifi.html</anchorfile>
      <anchor>aa10d125988e07a2688b3336288f18d0a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~InterfaceWifi</name>
      <anchorfile>classInterfaceWifi.html</anchorfile>
      <anchor>ab3ee2c03416d4eda95623685c5e709a5</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>StgDriver</name>
    <filename>classStgDriver.html</filename>
    <member kind="function">
      <type>Stg::Model *</type>
      <name>LocateModel</name>
      <anchorfile>classStgDriver.html</anchorfile>
      <anchor>a246109694f17710ed735321d0df46350</anchor>
      <arglist>(char *basename, player_devaddr_t *addr, const std::string &amp;type)</arglist>
    </member>
    <member kind="function">
      <type>Interface *</type>
      <name>LookupDevice</name>
      <anchorfile>classStgDriver.html</anchorfile>
      <anchor>aef21e9d29a76c1558206a76339e9ff4c</anchor>
      <arglist>(player_devaddr_t addr)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>ProcessMessage</name>
      <anchorfile>classStgDriver.html</anchorfile>
      <anchor>aaca0b334e863317f995de9d8a20d5757</anchor>
      <arglist>(QueuePointer &amp;resp_queue, player_msghdr *hdr, void *data)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>Setup</name>
      <anchorfile>classStgDriver.html</anchorfile>
      <anchor>aa602355926e4f6f4a0bf94329c0dfed8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>Shutdown</name>
      <anchorfile>classStgDriver.html</anchorfile>
      <anchor>ac9eca2c15e851a3f3091762bdc872f2d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>StgDriver</name>
      <anchorfile>classStgDriver.html</anchorfile>
      <anchor>a08ab8d7fd3589e9065bd987f4f5fc30a</anchor>
      <arglist>(ConfigFile *cf, int section)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>Subscribe</name>
      <anchorfile>classStgDriver.html</anchorfile>
      <anchor>a37e2f39e92fffc1016388ef08fdef296</anchor>
      <arglist>(QueuePointer &amp;queue, player_devaddr_t addr)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>Unsubscribe</name>
      <anchorfile>classStgDriver.html</anchorfile>
      <anchor>abbce85887750b3e62cc4adca9b34d5f3</anchor>
      <arglist>(QueuePointer &amp;queue, player_devaddr_t addr)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Update</name>
      <anchorfile>classStgDriver.html</anchorfile>
      <anchor>af8505507845ec65f65f813ec93120376</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~StgDriver</name>
      <anchorfile>classStgDriver.html</anchorfile>
      <anchor>a85178f76a7f2861096f039ec3c6b4af1</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static Stg::WorldGui *</type>
      <name>world</name>
      <anchorfile>classStgDriver.html</anchorfile>
      <anchor>a7b3b1e8a60a836d94bd5135ef46a27a2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::vector&lt; Interface * &gt;</type>
      <name>devices</name>
      <anchorfile>classStgDriver.html</anchorfile>
      <anchor>a4baf3a8d800066eb54d3b86b2d7bc020</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>StTime</name>
    <filename>classStTime.html</filename>
    <member kind="function">
      <type>int</type>
      <name>GetTime</name>
      <anchorfile>classStTime.html</anchorfile>
      <anchor>ad08ba7c9b7a35865a3cc5346f8d83862</anchor>
      <arglist>(struct timeval *time)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>GetTimeDouble</name>
      <anchorfile>classStTime.html</anchorfile>
      <anchor>ab3bf9cea5207791d832d3c2de431b264</anchor>
      <arglist>(double *time)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>StTime</name>
      <anchorfile>classStTime.html</anchorfile>
      <anchor>accc7b025372bb27bb8fe02a855b33109</anchor>
      <arglist>(StgDriver *driver)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~StTime</name>
      <anchorfile>classStTime.html</anchorfile>
      <anchor>a9ef783cea2897a37de142dff09e9d2be</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>lspTest</name>
    <filename>namespacelspTest.html</filename>
    <class kind="class">lspTest::Blobfinder</class>
    <class kind="class">lspTest::Fiducial</class>
    <class kind="class">lspTest::Laser</class>
    <class kind="class">lspTest::Position2D</class>
    <class kind="class">lspTest::Proxy</class>
    <class kind="class">lspTest::Simulation</class>
    <class kind="class">lspTest::Sonar</class>
    <class kind="class">lspTest::Speech</class>
  </compound>
  <compound kind="class">
    <name>lspTest::Blobfinder</name>
    <filename>classlspTest_1_1Blobfinder.html</filename>
    <base>lspTest::Proxy</base>
    <member kind="function">
      <type>void</type>
      <name>setUp</name>
      <anchorfile>classlspTest_1_1Blobfinder.html</anchorfile>
      <anchor>a7f6201ab56ec8fe001112590ad9a0715</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>tearDown</name>
      <anchorfile>classlspTest_1_1Blobfinder.html</anchorfile>
      <anchor>a7fcea8655079d7d2a6fdfd49621085a6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>testConfig</name>
      <anchorfile>classlspTest_1_1Blobfinder.html</anchorfile>
      <anchor>a3103af8fa5e208e1b319520e5b4ea147</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>testData</name>
      <anchorfile>classlspTest_1_1Blobfinder.html</anchorfile>
      <anchor>aa3b0dabc38f702a919fb99f71a8b53b1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>testGeom</name>
      <anchorfile>classlspTest_1_1Blobfinder.html</anchorfile>
      <anchor>a9aba9974c280189beee2f763438cbef4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>playerc_blobfinder_t *</type>
      <name>blobProxy</name>
      <anchorfile>classlspTest_1_1Blobfinder.html</anchorfile>
      <anchor>a02c205b35b3fa2085daba59c7b882ebc</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>lspTest::Fiducial</name>
    <filename>classlspTest_1_1Fiducial.html</filename>
    <base>lspTest::Proxy</base>
    <member kind="function">
      <type>void</type>
      <name>setUp</name>
      <anchorfile>classlspTest_1_1Fiducial.html</anchorfile>
      <anchor>a1fb97ff1bfaac965ee1d7c5c73810af1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>tearDown</name>
      <anchorfile>classlspTest_1_1Fiducial.html</anchorfile>
      <anchor>aa5bcb2e2877b829f57e3a85e78e36e2d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>testConfig</name>
      <anchorfile>classlspTest_1_1Fiducial.html</anchorfile>
      <anchor>ad5fddda9d30e056f4c3ed0d763d50a44</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>testData</name>
      <anchorfile>classlspTest_1_1Fiducial.html</anchorfile>
      <anchor>a20dfc2b14d36147ad0c895fc53664154</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>testGeom</name>
      <anchorfile>classlspTest_1_1Fiducial.html</anchorfile>
      <anchor>a12d9989daa52783b747c9588fc2d9f06</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>playerc_fiducial_t *</type>
      <name>fiducialProxy</name>
      <anchorfile>classlspTest_1_1Fiducial.html</anchorfile>
      <anchor>a3e6332776dd178915b70e336f5a52955</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>lspTest::Laser</name>
    <filename>classlspTest_1_1Laser.html</filename>
    <base>lspTest::Proxy</base>
    <member kind="function">
      <type>void</type>
      <name>setUp</name>
      <anchorfile>classlspTest_1_1Laser.html</anchorfile>
      <anchor>aded47f1a8766a2b2845d56e8976d100f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>tearDown</name>
      <anchorfile>classlspTest_1_1Laser.html</anchorfile>
      <anchor>a57d5dc61fc705cd29d6af322acbfe10f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>testConfig</name>
      <anchorfile>classlspTest_1_1Laser.html</anchorfile>
      <anchor>a950a1ae2631da6f62e4d694966b6c9ec</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>testData</name>
      <anchorfile>classlspTest_1_1Laser.html</anchorfile>
      <anchor>a56d0ae6b11ea28037840f2ade50d9b3c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>testGeom</name>
      <anchorfile>classlspTest_1_1Laser.html</anchorfile>
      <anchor>a121dd87163d8f4e2cb8401d352d1a0f6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>playerc_laser_t *</type>
      <name>laserProxy</name>
      <anchorfile>classlspTest_1_1Laser.html</anchorfile>
      <anchor>acc4dc73bb47d9db07cddba05ab063794</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static const int</type>
      <name>Samples</name>
      <anchorfile>classlspTest_1_1Laser.html</anchorfile>
      <anchor>a5eaa92db3e82e210ce685236759d3b53</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>lspTest::Position2D</name>
    <filename>classlspTest_1_1Position2D.html</filename>
    <base>lspTest::Proxy</base>
    <member kind="function">
      <type>void</type>
      <name>setUp</name>
      <anchorfile>classlspTest_1_1Position2D.html</anchorfile>
      <anchor>acb3467fa9bbdb07e6bc1867fe301f426</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>tearDown</name>
      <anchorfile>classlspTest_1_1Position2D.html</anchorfile>
      <anchor>adfe1c13974e38dbfd474cf40d79634c8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>testData</name>
      <anchorfile>classlspTest_1_1Position2D.html</anchorfile>
      <anchor>ae4add094d0c9ffed3ce46fe296d7fd9c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>testGeom</name>
      <anchorfile>classlspTest_1_1Position2D.html</anchorfile>
      <anchor>a97d0844793d1e3ff23afaf8bd6abf203</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>testMove</name>
      <anchorfile>classlspTest_1_1Position2D.html</anchorfile>
      <anchor>a7f22ffc2b6722013bbf67dd63afdcead</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>playerc_position2d_t *</type>
      <name>posProxy</name>
      <anchorfile>classlspTest_1_1Position2D.html</anchorfile>
      <anchor>a9c721a8960c2d634bf336b9156b3af58</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>lspTest::Proxy</name>
    <filename>classlspTest_1_1Proxy.html</filename>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>connect</name>
      <anchorfile>classlspTest_1_1Proxy.html</anchorfile>
      <anchor>ab6847de72587322aa8c5bb20de97a1aa</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>disconnect</name>
      <anchorfile>classlspTest_1_1Proxy.html</anchorfile>
      <anchor>a1e397deaa51ee37d1d707ddcaae222b4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>playerc_client_t *</type>
      <name>client</name>
      <anchorfile>classlspTest_1_1Proxy.html</anchorfile>
      <anchor>a05da398e71ecb9e55b5e309e492e160f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static const double</type>
      <name>Delta</name>
      <anchorfile>classlspTest_1_1Proxy.html</anchorfile>
      <anchor>a32ff94552d79351f181c4389f747ed72</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>lspTest::Simulation</name>
    <filename>classlspTest_1_1Simulation.html</filename>
    <base>lspTest::Proxy</base>
    <member kind="function">
      <type>void</type>
      <name>setUp</name>
      <anchorfile>classlspTest_1_1Simulation.html</anchorfile>
      <anchor>ae6b88ff430e3896de176c29f35e9c3c6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>tearDown</name>
      <anchorfile>classlspTest_1_1Simulation.html</anchorfile>
      <anchor>aeba6ce82d8dcb27c44941eebc83a9420</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>testPose2D</name>
      <anchorfile>classlspTest_1_1Simulation.html</anchorfile>
      <anchor>a52c56bda4eeb8e9d711605c0ff310eca</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>testPose3D</name>
      <anchorfile>classlspTest_1_1Simulation.html</anchorfile>
      <anchor>a635d4fb6bf45925a8e3f759a099847e1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>testProperties</name>
      <anchorfile>classlspTest_1_1Simulation.html</anchorfile>
      <anchor>a8737be81fab1031b1e63dc07b8789b11</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>playerc_simulation_t *</type>
      <name>simProxy</name>
      <anchorfile>classlspTest_1_1Simulation.html</anchorfile>
      <anchor>a443a80b5ee476d0c4e2eb70bc95a471f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>lspTest::Sonar</name>
    <filename>classlspTest_1_1Sonar.html</filename>
    <base>lspTest::Proxy</base>
    <member kind="function">
      <type>void</type>
      <name>setUp</name>
      <anchorfile>classlspTest_1_1Sonar.html</anchorfile>
      <anchor>ae632d92098b0d74dd41eb4b3e11c3d82</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>tearDown</name>
      <anchorfile>classlspTest_1_1Sonar.html</anchorfile>
      <anchor>a29301f1d0c98f37dff89e98af92f46e9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>testConfig</name>
      <anchorfile>classlspTest_1_1Sonar.html</anchorfile>
      <anchor>a53fba4c88ff5f49725e184f15794941e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>testData</name>
      <anchorfile>classlspTest_1_1Sonar.html</anchorfile>
      <anchor>a87665cdd54f3dea3242cbc9975fa68d1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>testGeom</name>
      <anchorfile>classlspTest_1_1Sonar.html</anchorfile>
      <anchor>ae60d3c6300740c0b1280f8c9d03346a4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>playerc_sonar_t *</type>
      <name>sonarProxy</name>
      <anchorfile>classlspTest_1_1Sonar.html</anchorfile>
      <anchor>a450c9d533c25d9bd68a728e8af8807b0</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>lspTest::Speech</name>
    <filename>classlspTest_1_1Speech.html</filename>
    <base>lspTest::Proxy</base>
    <member kind="function">
      <type>void</type>
      <name>setUp</name>
      <anchorfile>classlspTest_1_1Speech.html</anchorfile>
      <anchor>a66204235016a4319d37fb57707fb3261</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>tearDown</name>
      <anchorfile>classlspTest_1_1Speech.html</anchorfile>
      <anchor>a02f6ee1381c0df799f5d1f3261c67d21</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>testSay1</name>
      <anchorfile>classlspTest_1_1Speech.html</anchorfile>
      <anchor>aeecdf89da8e9ab2cbfa709d92643f08f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>playerc_speech_t *</type>
      <name>speechProxy</name>
      <anchorfile>classlspTest_1_1Speech.html</anchorfile>
      <anchor>a91ff876d7213804a4f8148147ed0ac01</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>Stg</name>
    <filename>namespaceStg.html</filename>
    <namespace>Stg::Gl</namespace>
    <class kind="class">Stg::Ancestor</class>
    <class kind="class">Stg::Block</class>
    <class kind="class">Stg::BlockGroup</class>
    <class kind="class">Stg::Bounds</class>
    <class kind="class">Stg::Camera</class>
    <class kind="class">Stg::Canvas</class>
    <class kind="class">Stg::Cell</class>
    <class kind="class">Stg::Color</class>
    <class kind="class">Stg::CProperty</class>
    <class kind="class">Stg::CtrlArgs</class>
    <class kind="class">Stg::FileManager</class>
    <class kind="class">Stg::Geom</class>
    <class kind="class">Stg::LogEntry</class>
    <class kind="class">Stg::Model</class>
    <class kind="class">Stg::ModelActuator</class>
    <class kind="class">Stg::ModelBlinkenlight</class>
    <class kind="class">Stg::ModelBlobfinder</class>
    <class kind="class">Stg::ModelCamera</class>
    <class kind="class">Stg::ModelFiducial</class>
    <class kind="class">Stg::ModelGripper</class>
    <class kind="class">Stg::ModelLaser</class>
    <class kind="class">Stg::ModelLightIndicator</class>
    <class kind="class">Stg::ModelPosition</class>
    <class kind="class">Stg::ModelRanger</class>
    <class kind="class">Stg::Option</class>
    <class kind="class">Stg::OptionsDlg</class>
    <class kind="class">Stg::OrthoCamera</class>
    <class kind="class">Stg::PerspectiveCamera</class>
    <class kind="class">Stg::Pose</class>
    <class kind="class">Stg::PowerPack</class>
    <class kind="class">Stg::Ray</class>
    <class kind="class">Stg::RaytraceResult</class>
    <class kind="class">Stg::Region</class>
    <class kind="class">Stg::Size</class>
    <class kind="struct">Stg::stg_blinkenlight_t</class>
    <class kind="class">Stg::stg_bounds3d_t</class>
    <class kind="struct">Stg::stg_fov_t</class>
    <class kind="class">Stg::stg_point3_t</class>
    <class kind="class">Stg::stg_point_int_t</class>
    <class kind="class">Stg::stg_point_t</class>
    <class kind="struct">Stg::stg_rotrect_t</class>
    <class kind="class">Stg::StripPlotVis</class>
    <class kind="class">Stg::SuperRegion</class>
    <class kind="class">Stg::TextureManager</class>
    <class kind="class">Stg::Velocity</class>
    <class kind="class">Stg::Visualizer</class>
    <class kind="class">Stg::World</class>
    <class kind="class">Stg::Worldfile</class>
    <class kind="class">Stg::WorldGui</class>
    <member kind="typedef">
      <type>std::set&lt; Block * &gt;</type>
      <name>BlockPtrSet</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ad1222dfb12ac0408dbd8f292e99b4092</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::vector&lt; Cell * &gt;</type>
      <name>CellPtrVec</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a67071608d422bdcf8e2520002c35151b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Model *(*</type>
      <name>creator_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a61fe512d932794a555f2c3e63d483cb5</anchor>
      <arglist>)(World *, Model *, const std::string &amp;type)</arglist>
    </member>
    <member kind="typedef">
      <type>std::set&lt; Model * &gt;</type>
      <name>ModelPtrSet</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>acd0048e15bcc6c6a96056280ee31591b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::vector&lt; Model * &gt;</type>
      <name>ModelPtrVec</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a38d0c02cc28c516d9c490835a1e903a7</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::vector&lt; stg_point_int_t &gt;</type>
      <name>PointIntVec</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>afc069872b10e240cd08492908f7c0d72</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>bool</type>
      <name>stg_bool_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>aad0a3102577a79fb97ed8d2ffa8a8029</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>uint32_t</type>
      <name>stg_id_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a8d60a92508b186c72f2440a3bab700b9</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>double</type>
      <name>stg_joules_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a62f63cf9894aeb0773f87243f7936a4a</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>double</type>
      <name>stg_kg_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a0a1a980b22aa0fe205f6fbf0a96ee6ac</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>double</type>
      <name>stg_meters_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ae8f54ca6f29ff0a82e6833e1d50152f4</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>int(*</type>
      <name>stg_model_callback_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a1482525ad18c0413dee3e16261f3a1b8</anchor>
      <arglist>)(Model *mod, void *user)</arglist>
    </member>
    <member kind="typedef">
      <type>unsigned long</type>
      <name>stg_msec_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a8bda84872fd2bae886376ae04bd5a0fb</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>double</type>
      <name>stg_radians_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a495b83f72f7b808c2a1e9f1e533d0006</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>bool(*</type>
      <name>stg_ray_test_func_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ae1381c6e3de690b414a92540aeeade63</anchor>
      <arglist>)(Model *candidate, Model *finder, const void *arg)</arglist>
    </member>
    <member kind="typedef">
      <type>RaytraceResult</type>
      <name>stg_raytrace_result_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a1236ed1c67712b6d2ac0e29235e1b1d8</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct timeval</type>
      <name>stg_time_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a7ac8daee0769af7fce9de558076a2410</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>uint64_t</type>
      <name>stg_usec_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a51ce4d080237c0fa550ae8fa9d6e44a5</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>double</type>
      <name>stg_watts_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a74a1b84a6640756d8069d2eaa0e4daea</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>int(*</type>
      <name>stg_world_callback_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ac303f983158a0251cc892b7f7e350cbc</anchor>
      <arglist>)(World *world, void *user)</arglist>
    </member>
    <member kind="enumvalue">
      <name>FiducialNone</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a83a97b5ba8f196c6a0da6ac2d63211eda4ae9ce1a8829ac09f8e729413cbfaa3b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>stg_laser_return_t</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a587145a8e112657abc51300abb389d64</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LaserTransparent</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a587145a8e112657abc51300abb389d64a7ddc682936c3db814e2fbfc68e92af61</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LaserVisible</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a587145a8e112657abc51300abb389d64a12bcd1d6aa09cb786e1a29a6b9932e78</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LaserBright</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a587145a8e112657abc51300abb389d64a001fc923686c96e9c747b192789e68d7</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>const int32_t</type>
      <name>CELLMASK</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a92e4e7eb532cd76b7fb6cd08d6277cdc</anchor>
      <arglist>(~((~0x00)&lt;&lt; RBITS))</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>constrain</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>acdb575844fef1a304eb7ca5a62ec5522</anchor>
      <arglist>(double val, double minval, double maxval)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>dtor</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ad0d71ea2ba3f32c96398be40af8e8f05</anchor>
      <arglist>(double d)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>EraseAll</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a92c75c58a631170c78085e0fc40fd8a5</anchor>
      <arglist>(T thing, C &amp;cont)</arglist>
    </member>
    <member kind="function">
      <type>int32_t</type>
      <name>GETCELL</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a5f7c3bca16962b4cf794b86e2f33de37</anchor>
      <arglist>(const int32_t x)</arglist>
    </member>
    <member kind="function">
      <type>int32_t</type>
      <name>GETREG</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a81917e219f4a9c9ec08bcc53d2a2b92d</anchor>
      <arglist>(const int32_t x)</arglist>
    </member>
    <member kind="function">
      <type>int32_t</type>
      <name>GETSREG</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>aa165e0f1b45cd28d2db4bd99853750a2</anchor>
      <arglist>(const int32_t x)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Init</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a42592e46d158bb502087e84a6be606ec</anchor>
      <arglist>(int *argc, char **argv[])</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>InitDone</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a230fac7c4d418e1ec88975914e9af7b7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>normalize</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a3286ac1126b0271b382082295f5f11d9</anchor>
      <arglist>(double a)</arglist>
    </member>
    <member kind="function">
      <type>const int32_t</type>
      <name>RBITS</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a332845aa7b999975409fdd41ab9b31b8</anchor>
      <arglist>(5)</arglist>
    </member>
    <member kind="function">
      <type>const int32_t</type>
      <name>REGIONMASK</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ac2b58bd9a04b890649ea3cc1fa949578</anchor>
      <arglist>(~((~0x00)&lt;&lt; SRBITS))</arglist>
    </member>
    <member kind="function">
      <type>const int32_t</type>
      <name>REGIONSIZE</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ad323d63cdbe752adfd811a4bea0393bc</anchor>
      <arglist>(REGIONWIDTH *REGIONWIDTH)</arglist>
    </member>
    <member kind="function">
      <type>const int32_t</type>
      <name>REGIONWIDTH</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a83b19ce4748047b1a09b6727aa6ec6b6</anchor>
      <arglist>(1&lt;&lt; RBITS)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RegisterModels</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a7a9e544a3b686f20835a56c53b8f14e6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>rtod</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>add89bf71be99c7d64bf895742ffd67a8</anchor>
      <arglist>(double r)</arglist>
    </member>
    <member kind="function">
      <type>const int32_t</type>
      <name>SBITS</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a38d5c7afbd593c9f7286374cfb9b7754</anchor>
      <arglist>(5)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>sgn</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>afadbd482070d7a79d7f132d86b94d924</anchor>
      <arglist>(double a)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>sgn</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ac088b4cd291a1ffe77670c717357c6fd</anchor>
      <arglist>(int a)</arglist>
    </member>
    <member kind="function">
      <type>const int32_t</type>
      <name>SRBITS</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ac1252e8add505351db22667f648ddcfb</anchor>
      <arglist>(RBITS+SBITS)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>stg_rotrects_from_image_file</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a6e02c15d62f3419eaa0380949aa7848a</anchor>
      <arglist>(const char *filename, stg_rotrect_t **rects, unsigned int *rect_count, unsigned int *widthp, unsigned int *heightp)</arglist>
    </member>
    <member kind="function">
      <type>stg_point_t *</type>
      <name>stg_unit_square_points_create</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a90c07151f1aa8f7c2ee93539702e0f84</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const int32_t</type>
      <name>SUPERREGIONSIZE</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>adec4e23196a9a0e71ce9a3033b30bb30</anchor>
      <arglist>(SUPERREGIONWIDTH *SUPERREGIONWIDTH)</arglist>
    </member>
    <member kind="function">
      <type>const int32_t</type>
      <name>SUPERREGIONWIDTH</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a3bee0193c7eb3b568c1bd1424812b087</anchor>
      <arglist>(1&lt;&lt; SBITS)</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>Version</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a52962c947a9ac0c21f0c4ed0697c847f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>AUTHORS</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ace6281855aca8d05bc4369fefad9a1d7</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const double</type>
      <name>billion</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a6b48d9934f07f652f5c2c628152510e7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>COPYRIGHT</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ab7b97c87a071be0d05dc83c4a09d9b2a</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>DESCRIPTION</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ab0123af3aa7274cb7b23ccef49ad059e</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>LICENSE</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ada51f5471e3d800c393197299cedb171</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const double</type>
      <name>million</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a2b2438eb22bf4523f996ff05bf780697</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_COLOR</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a1033547d6a7306ad1002dd4fbf3756c5</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_FIDUCIAL_RETURN</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>aac84c8246c7f768a2e74f5e7cc3f2247</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_GEOM</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a0ae8b300f8a7a7245d78fdd9a3b9bd87</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_GRIPPER_RETURN</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>ae00c4f534813d21cd671f7ea7263c6eb</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_LASER_RETURN</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>add705894a23a23f26a4b959dfcb1e038</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_MASS</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a81c14ef4fa88639cb3767c80e2082ee1</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_OBSTACLE_RETURN</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a2200b645673bd0b7776c124639d17b00</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_POSE</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a38e5ec6e1170c2d0990b0360fac3eb65</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_PREFIX</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a4a43c94b4e8ffbc023e6b424060ebdb6</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_RANGER_RETURN</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a1503be3574cd3ce98cbbee3d5bd5e4e0</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_VELOCITY</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a33d8d02f443c887e178be3d40cafa9f4</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>MP_WATTS</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a1a7015153c3154d04f8f2650a910964d</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const double</type>
      <name>thousand</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a50faac9c121b9c4496c631c32623a20d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const char</type>
      <name>WEBSITE</name>
      <anchorfile>namespaceStg.html</anchorfile>
      <anchor>a8096fa6c31e3cbc1ac3f3a9ef7f9f696</anchor>
      <arglist>[]</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Ancestor</name>
    <filename>classStg_1_1Ancestor.html</filename>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>AddChild</name>
      <anchorfile>classStg_1_1Ancestor.html</anchorfile>
      <anchor>a54d1c6c9e9204e68692c02cdea344750</anchor>
      <arglist>(Model *mod)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Ancestor</name>
      <anchorfile>classStg_1_1Ancestor.html</anchorfile>
      <anchor>a36ba0d7664c6a58c7df9b6f302424fe3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ForEachDescendant</name>
      <anchorfile>classStg_1_1Ancestor.html</anchorfile>
      <anchor>ae0067e3d94ead23e1ff0216b58c36629</anchor>
      <arglist>(stg_model_callback_t func, void *arg)</arglist>
    </member>
    <member kind="function">
      <type>ModelPtrVec &amp;</type>
      <name>GetChildren</name>
      <anchorfile>classStg_1_1Ancestor.html</anchorfile>
      <anchor>a31977357546af2d4981627ee9efbf7d2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual Pose</type>
      <name>GetGlobalPose</name>
      <anchorfile>classStg_1_1Ancestor.html</anchorfile>
      <anchor>ad7ba3d836505368fffdda44a79e9c70a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Lock</name>
      <anchorfile>classStg_1_1Ancestor.html</anchorfile>
      <anchor>a0358b34c501a273403fb1b90dcec951a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>RemoveChild</name>
      <anchorfile>classStg_1_1Ancestor.html</anchorfile>
      <anchor>abbb5a7a977a51b946462122e2278b377</anchor>
      <arglist>(Model *mod)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetToken</name>
      <anchorfile>classStg_1_1Ancestor.html</anchorfile>
      <anchor>aacb761d3e6b5ed08b3f476c2dad24b82</anchor>
      <arglist>(const std::string &amp;str)</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>Token</name>
      <anchorfile>classStg_1_1Ancestor.html</anchorfile>
      <anchor>a50f827ad6c83462426b8cfbb0b1996e1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Unlock</name>
      <anchorfile>classStg_1_1Ancestor.html</anchorfile>
      <anchor>aa7281f24b8c45f2b44c179569c223be6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~Ancestor</name>
      <anchorfile>classStg_1_1Ancestor.html</anchorfile>
      <anchor>ace87debd40e34eb4d39c05529afd94c6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>std::map&lt; std::string, unsigned int &gt;</type>
      <name>child_type_counts</name>
      <anchorfile>classStg_1_1Ancestor.html</anchorfile>
      <anchor>a8bfd93c24d1b93845708e9357d111293</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1Ancestor.html</anchorfile>
      <anchor>a60e43b1e84f382b365bc4bfe46942c68</anchor>
      <arglist>(Worldfile *wf, int section)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>Save</name>
      <anchorfile>classStg_1_1Ancestor.html</anchorfile>
      <anchor>ac5b95d6914face5c05299d6641c15383</anchor>
      <arglist>(Worldfile *wf, int section)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>pthread_mutex_t</type>
      <name>access_mutex</name>
      <anchorfile>classStg_1_1Ancestor.html</anchorfile>
      <anchor>a08fb5e27e0078cb414e03e745c2df896</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>ModelPtrVec</type>
      <name>children</name>
      <anchorfile>classStg_1_1Ancestor.html</anchorfile>
      <anchor>a58527b63857cdf4ee1fa38e8242d9694</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>debug</name>
      <anchorfile>classStg_1_1Ancestor.html</anchorfile>
      <anchor>a5fe124b647307ae30b1b7ba59063e81c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::string</type>
      <name>token</name>
      <anchorfile>classStg_1_1Ancestor.html</anchorfile>
      <anchor>a44526ef6fe520f951603654f6016c7ed</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Block</name>
    <filename>classStg_1_1Block.html</filename>
    <member kind="function">
      <type>void</type>
      <name>AppendTouchingModels</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>a867e3911d3041929a42d2194d4b8467d</anchor>
      <arglist>(ModelPtrSet &amp;touchers)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Block</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>aeff46be1a11d3aae780fa1b419ef1511</anchor>
      <arglist>(Model *mod, Worldfile *wf, int entity)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Block</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>aac736bf92f2f0046a43aba9afbf2364f</anchor>
      <arglist>(Model *mod, stg_point_t *pts, size_t pt_count, stg_meters_t zmin, stg_meters_t zmax, Color color, bool inherit_color)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>CenterX</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>adeaabd3aa235954fb6bd0e7323b3e67d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>CenterY</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>a431fa22396519b8478b1acb92c681d6b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>DrawFootPrint</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>a528693d53b90f12bf522b698a1c96187</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>DrawSolid</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>a46c58e4f0fdfa02a229d6d8bb6b9a5f9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>GenerateCandidateCells</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>a754a1c489a417a62b251970ca4e85e68</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const Color &amp;</type>
      <name>GetColor</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>a92982fc608ba0e23d7217f9c7702373e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Model *</type>
      <name>GetModel</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>a673aa5c12cf0bcd7c78074e269033ab1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>ab43aaf676d4d17ff78e39b46f54f379f</anchor>
      <arglist>(Worldfile *wf, int entity)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Map</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>a35647b1146a6bd9692ea094dbbe5a743</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; stg_point_t &gt; &amp;</type>
      <name>Points</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>a9cf8903f0124640fdaec8451ed563978</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>stg_point_t *</type>
      <name>Points</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>a5513a1365d5a92779ac0797969569242</anchor>
      <arglist>(unsigned int *count)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Rasterize</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>aa0e48921f1caac02bf281793d78c153d</anchor>
      <arglist>(uint8_t *data, unsigned int width, unsigned int height, stg_meters_t cellwidth, stg_meters_t cellheight)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RemoveFromCellArray</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>a1c62d0a8b8e71b4ffa0bc5fa654e9261</anchor>
      <arglist>(CellPtrVec *blocks)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetCenter</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>ac56648bebf9e3b85e125b106cba55c46</anchor>
      <arglist>(double x, double y)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetCenterX</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>afdb99f237b8f08203834847c8bbe645f</anchor>
      <arglist>(double y)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetCenterY</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>aafee15568ef03c2755424f900427140d</anchor>
      <arglist>(double y)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetZ</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>acb1a811dff1418b4bb546b44def123e9</anchor>
      <arglist>(double min, double max)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SwitchToTestedCells</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>a37b633fc0554631b4101db36313f9e16</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Model *</type>
      <name>TestCollision</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>ab03dceda3b1e7a565e74f1ea6555f641</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Translate</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>a2aca36ead429291b6a707d4f399dce56</anchor>
      <arglist>(double x, double y)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>UnMap</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>ab25f3dfcc7cf5ffdc0b74a2acc635cf4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Block</name>
      <anchorfile>classStg_1_1Block.html</anchorfile>
      <anchor>a19d1bd0e1cef6a865ed2745a2e648405</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::BlockGroup</name>
    <filename>classStg_1_1BlockGroup.html</filename>
    <member kind="function">
      <type>void</type>
      <name>AppendBlock</name>
      <anchorfile>classStg_1_1BlockGroup.html</anchorfile>
      <anchor>addca7ee290ceed9297d4fdc82056922d</anchor>
      <arglist>(Block *block)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>AppendTouchingModels</name>
      <anchorfile>classStg_1_1BlockGroup.html</anchorfile>
      <anchor>a6ce28c614016884ef08cc67a3fbb05a0</anchor>
      <arglist>(ModelPtrSet &amp;touchers)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>BlockGroup</name>
      <anchorfile>classStg_1_1BlockGroup.html</anchorfile>
      <anchor>abe7c27be226cd462273eaa156c8f6664</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>CalcSize</name>
      <anchorfile>classStg_1_1BlockGroup.html</anchorfile>
      <anchor>af746df9fde9891462a2107d02f64c1ca</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>CallDisplayList</name>
      <anchorfile>classStg_1_1BlockGroup.html</anchorfile>
      <anchor>a40ca33e3bb09ddbb3e6a92f413fe6cb2</anchor>
      <arglist>(Model *mod)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Clear</name>
      <anchorfile>classStg_1_1BlockGroup.html</anchorfile>
      <anchor>ae6fbc3dddce6bcb5c5ed2cac4e082a7c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>DrawFootPrint</name>
      <anchorfile>classStg_1_1BlockGroup.html</anchorfile>
      <anchor>abea9bfb602e2b45a6c1ff040374d988e</anchor>
      <arglist>(const Geom &amp;geom)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>DrawSolid</name>
      <anchorfile>classStg_1_1BlockGroup.html</anchorfile>
      <anchor>a3722a5e1fd35b60392452dcc3e4e4a47</anchor>
      <arglist>(const Geom &amp;geom)</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>GetCount</name>
      <anchorfile>classStg_1_1BlockGroup.html</anchorfile>
      <anchor>a12034c8dcacb7b80a6caa91893793e8b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const stg_point3_t &amp;</type>
      <name>GetOffset</name>
      <anchorfile>classStg_1_1BlockGroup.html</anchorfile>
      <anchor>ad7078a85be7ae1c7e9f01ea3da3a10bc</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const Size &amp;</type>
      <name>GetSize</name>
      <anchorfile>classStg_1_1BlockGroup.html</anchorfile>
      <anchor>ad96607bc0cef944a9591b313f0adf7ab</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>InvalidateModelPointCache</name>
      <anchorfile>classStg_1_1BlockGroup.html</anchorfile>
      <anchor>a467a1b6adf3691a3510b06a518e5da2d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>LoadBitmap</name>
      <anchorfile>classStg_1_1BlockGroup.html</anchorfile>
      <anchor>abf7021dd17488ac35c7b6827e2d6c41d</anchor>
      <arglist>(Model *mod, const std::string &amp;bitmapfile, Worldfile *wf)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>LoadBlock</name>
      <anchorfile>classStg_1_1BlockGroup.html</anchorfile>
      <anchor>a72cf66097ad3c6af1ba1ec80e9c531f5</anchor>
      <arglist>(Model *mod, Worldfile *wf, int entity)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Map</name>
      <anchorfile>classStg_1_1BlockGroup.html</anchorfile>
      <anchor>aa1780e25d53624f23832ad3454d21ba4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Rasterize</name>
      <anchorfile>classStg_1_1BlockGroup.html</anchorfile>
      <anchor>a8ec8cf821539f1d5065499eb02014a0a</anchor>
      <arglist>(uint8_t *data, unsigned int width, unsigned int height, stg_meters_t cellwidth, stg_meters_t cellheight)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SwitchToTestedCells</name>
      <anchorfile>classStg_1_1BlockGroup.html</anchorfile>
      <anchor>aacd6e7890f79101fa2968bc71bf3e4c3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Model *</type>
      <name>TestCollision</name>
      <anchorfile>classStg_1_1BlockGroup.html</anchorfile>
      <anchor>a2f196be87d5129230bf88cc285a41558</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>UnMap</name>
      <anchorfile>classStg_1_1BlockGroup.html</anchorfile>
      <anchor>ad902d6179f11ff3d4aefaa0632613da5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~BlockGroup</name>
      <anchorfile>classStg_1_1BlockGroup.html</anchorfile>
      <anchor>a2de492ec9ba1b254d4af948ae28edcfa</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Bounds</name>
    <filename>classStg_1_1Bounds.html</filename>
    <member kind="function">
      <type></type>
      <name>Bounds</name>
      <anchorfile>classStg_1_1Bounds.html</anchorfile>
      <anchor>a9b218f08d2230901250f0ddf85400dbe</anchor>
      <arglist>(double min, double max)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Bounds</name>
      <anchorfile>classStg_1_1Bounds.html</anchorfile>
      <anchor>a46475c5477ea6079361dc1ead79da517</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>double</type>
      <name>max</name>
      <anchorfile>classStg_1_1Bounds.html</anchorfile>
      <anchor>a602199ec931349ad7c5aba242e3f12db</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>double</type>
      <name>min</name>
      <anchorfile>classStg_1_1Bounds.html</anchorfile>
      <anchor>a6738da3593693428c3e47dd9882dbcc7</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Camera</name>
    <filename>classStg_1_1Camera.html</filename>
    <member kind="function">
      <type></type>
      <name>Camera</name>
      <anchorfile>classStg_1_1Camera.html</anchorfile>
      <anchor>a0cc2c698633020efee696780b5b643cc</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>Draw</name>
      <anchorfile>classStg_1_1Camera.html</anchorfile>
      <anchor>a7568744f093c66185e0959bab56d5a68</anchor>
      <arglist>(void) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1Camera.html</anchorfile>
      <anchor>acd51fc228e0d860a343bc3396c4b19ce</anchor>
      <arglist>(Worldfile *wf, int sec)=0</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>pitch</name>
      <anchorfile>classStg_1_1Camera.html</anchorfile>
      <anchor>a1bc900726ccb14bde906422f61dfe5ef</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>reset</name>
      <anchorfile>classStg_1_1Camera.html</anchorfile>
      <anchor>ab0dedbfbe81cd84f4d0e30e6bc402237</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>SetProjection</name>
      <anchorfile>classStg_1_1Camera.html</anchorfile>
      <anchor>a8709cd764580420091ce2b895f35d782</anchor>
      <arglist>(void) const =0</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>x</name>
      <anchorfile>classStg_1_1Camera.html</anchorfile>
      <anchor>ab88294a3309b21c5c9e158a7d42325c9</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>y</name>
      <anchorfile>classStg_1_1Camera.html</anchorfile>
      <anchor>a9a9a1cc119919cbba0b7844de521cd9a</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>yaw</name>
      <anchorfile>classStg_1_1Camera.html</anchorfile>
      <anchor>accdc9633da6da7c85af07132b1735181</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>z</name>
      <anchorfile>classStg_1_1Camera.html</anchorfile>
      <anchor>a4765cf8b8dec896e67aaab646db572f2</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~Camera</name>
      <anchorfile>classStg_1_1Camera.html</anchorfile>
      <anchor>a6f54913a56b91bdb01b13da57acae142</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>float</type>
      <name>_pitch</name>
      <anchorfile>classStg_1_1Camera.html</anchorfile>
      <anchor>aa2ab58d7a9cecef12d924d3183e4c54e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>float</type>
      <name>_x</name>
      <anchorfile>classStg_1_1Camera.html</anchorfile>
      <anchor>a388938d16c6c66ab6764b55315275a96</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>float</type>
      <name>_y</name>
      <anchorfile>classStg_1_1Camera.html</anchorfile>
      <anchor>ae1a2d11028b7d980188c30cfce5c8308</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>float</type>
      <name>_yaw</name>
      <anchorfile>classStg_1_1Camera.html</anchorfile>
      <anchor>a9dca613313db6c129a402cb85b764123</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>float</type>
      <name>_z</name>
      <anchorfile>classStg_1_1Camera.html</anchorfile>
      <anchor>a0e865ce4f14a96dd838608dcf92dc10a</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Canvas</name>
    <filename>classStg_1_1Canvas.html</filename>
    <class kind="class">Stg::Canvas::GlColorStack</class>
    <member kind="function">
      <type></type>
      <name>Canvas</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>aa1fd849f6afb4823b0dc6dcdbda1718b</anchor>
      <arglist>(WorldGui *world, int x, int y, int width, int height)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>CanvasToWorld</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a2054ab96a6fc0d878b2917d6da94a32e</anchor>
      <arglist>(int px, int py, double *wx, double *wy, double *wz)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>createMenuItems</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>abfbd27b859ed723732766bb318377007</anchor>
      <arglist>(Fl_Menu_Bar *menu, std::string path)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>dirtyBuffer</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>ab026f667837b3b4d6b29a82e9d804b7c</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>draw</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a356b9fbf8aa7d45a53bb2a32451f8dc5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>DrawBlocks</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a3a8a8a97fd72441214941463af846fd1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>DrawBoundingBoxes</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a09326b7fd3a52825f2dfdbf12647f10a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>DrawFloor</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>aba475cac38051f0da8611ec9e14831bc</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>EnterScreenCS</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a7d9a84435118dca868c39e381c8f418a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>FixViewport</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a9795109cec06101c877fd99d563779a9</anchor>
      <arglist>(int W, int H)</arglist>
    </member>
    <member kind="function">
      <type>Model *</type>
      <name>getModel</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a57690d7263ec8ddce2aa39d708188927</anchor>
      <arglist>(int x, int y)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>handle</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a3ec459ef5f98c35494cedfde2ab460a5</anchor>
      <arglist>(int event)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>InitGl</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a02cdb7149ced4c97661f6c0775c5c74b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>InvertView</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>ad3bf27f37d8a39883627eb14de7134e8</anchor>
      <arglist>(uint32_t invertflags)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>LeaveScreenCS</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a436c025ae3a4c71f3a9ddd0e97c12b67</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>afe4c1c6076d61a5bf324d92fbf0c1b3b</anchor>
      <arglist>(Worldfile *wf, int section)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>PopColor</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>ae31d01d168ffbd2d68bc07d45168f15e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>PushColor</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a16af934be4ebe135227c203ef983a629</anchor>
      <arglist>(double r, double g, double b, double a)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>PushColor</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>ad869202cc149ead8042eda0c10146dcd</anchor>
      <arglist>(Color col)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>renderFrame</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>ad160684c429ddfa3dc0d4fda8010cf0f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>resetCamera</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>ad9add122972df1c1cd489f24ac40695b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>resize</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a2338b70a3adec38aff0b36c588f8e179</anchor>
      <arglist>(int X, int Y, int W, int H)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Save</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>af1353c53cc9813d8e7d4fd4d9aec2e83</anchor>
      <arglist>(Worldfile *wf, int section)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Screenshot</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>adb416e9abb375d5f9e97133e9a7176a2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>select</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a28386a38b65a35be1c6b7d8ad3fe168e</anchor>
      <arglist>(Model *mod)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>selected</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>ac508fac43cca75bf57fcb27aa74014d4</anchor>
      <arglist>(Model *mod)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setDirtyBuffer</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a32c8b0c35e9390a05dda367cb5a9f54c</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unSelect</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a7b538978da74442c6c104c02d2201a30</anchor>
      <arglist>(Model *mod)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unSelectAll</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a5609fec4af660a1109830744b2d6099a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>VisualizeAll</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>afdb1f60bdeb6b7f6a3c82877c8b15868</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Canvas</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a237c4549ad2e27c729cd1f71e89f0fd9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>perspectiveCb</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a0e96631095f1718441f3886dd6784e87</anchor>
      <arglist>(Fl_Widget *w, void *p)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>TimerCallback</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a30e149b9555648fac5059804c4aaabc9</anchor>
      <arglist>(Canvas *canvas)</arglist>
    </member>
    <member kind="variable">
      <type>std::map&lt; std::string, Option * &gt;</type>
      <name>_custom_options</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a245222419a29264dcbe933b7d32c46bf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned long</type>
      <name>frames_rendered_count</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a077d80bac62bd5e76d20f975e73b72f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>graphics</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>ae827a93f7a4ff945f23c3150b69efbf3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>screenshot_frame_skip</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>acc479089e37cc165508fb4e21a7e7ae9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>WorldGui *</type>
      <name>world</name>
      <anchorfile>classStg_1_1Canvas.html</anchorfile>
      <anchor>a68aec1bdbec7f3ba5999cb7e904c2aca</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Cell</name>
    <filename>classStg_1_1Cell.html</filename>
    <member kind="function">
      <type></type>
      <name>Cell</name>
      <anchorfile>classStg_1_1Cell.html</anchorfile>
      <anchor>a3c18e2d8439cc007ea564663a05541a6</anchor>
      <arglist>(Region *reg)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Color</name>
    <filename>classStg_1_1Color.html</filename>
    <member kind="function">
      <type></type>
      <name>Color</name>
      <anchorfile>classStg_1_1Color.html</anchorfile>
      <anchor>a9a742cbe9f9f4037f5d9f4e81a9b2428</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Color</name>
      <anchorfile>classStg_1_1Color.html</anchorfile>
      <anchor>a922b15aae6b52b1ff970eb93005074f3</anchor>
      <arglist>(const std::string &amp;name)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Color</name>
      <anchorfile>classStg_1_1Color.html</anchorfile>
      <anchor>a1ff48fafaffb35cdbf0d8384fc48e7e9</anchor>
      <arglist>(float r, float g, float b, float a=1.0)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator!=</name>
      <anchorfile>classStg_1_1Color.html</anchorfile>
      <anchor>a714de056d8df5c1ced6c761ed0c681d5</anchor>
      <arglist>(const Color &amp;other)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classStg_1_1Color.html</anchorfile>
      <anchor>a18a2d957b03c38d9b2ea89eac7af9271</anchor>
      <arglist>(const Color &amp;other)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Print</name>
      <anchorfile>classStg_1_1Color.html</anchorfile>
      <anchor>a52859b68012ed9d8403e7f326de34584</anchor>
      <arglist>(const char *prefix)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static Color</type>
      <name>RandomColor</name>
      <anchorfile>classStg_1_1Color.html</anchorfile>
      <anchor>a5a50d5a5bc7c5007992def88fc3824ff</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>a</name>
      <anchorfile>classStg_1_1Color.html</anchorfile>
      <anchor>a8c968e8f6f1c8077bd02a739a7df3b7e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>b</name>
      <anchorfile>classStg_1_1Color.html</anchorfile>
      <anchor>a2b50bd3c54c9b3a4506e3e80be626196</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>g</name>
      <anchorfile>classStg_1_1Color.html</anchorfile>
      <anchor>aa3e9761187fd9b97b7d3323412b979ef</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>r</name>
      <anchorfile>classStg_1_1Color.html</anchorfile>
      <anchor>a6cafc68c2e9dcdc4cb1633532930793a</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::CProperty</name>
    <filename>classStg_1_1CProperty.html</filename>
    <member kind="function">
      <type></type>
      <name>CProperty</name>
      <anchorfile>classStg_1_1CProperty.html</anchorfile>
      <anchor>af0b08a13f661fdc8b1237e48aaa349d5</anchor>
      <arglist>(int entity, const char *name, int line)</arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>entity</name>
      <anchorfile>classStg_1_1CProperty.html</anchorfile>
      <anchor>a4409013be121d32889b00862f0852bb9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>line</name>
      <anchorfile>classStg_1_1CProperty.html</anchorfile>
      <anchor>ad318ed64149e38d9ada73ec250d708bd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>name</name>
      <anchorfile>classStg_1_1CProperty.html</anchorfile>
      <anchor>a057ce9a0742c0b0e50da776bec65adda</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>used</name>
      <anchorfile>classStg_1_1CProperty.html</anchorfile>
      <anchor>aa30c89e502cea9eb578e3264a7e00026</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; int &gt;</type>
      <name>values</name>
      <anchorfile>classStg_1_1CProperty.html</anchorfile>
      <anchor>ab10edbf9131799f620aaec7bb902ae7a</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::CtrlArgs</name>
    <filename>classStg_1_1CtrlArgs.html</filename>
    <member kind="function">
      <type></type>
      <name>CtrlArgs</name>
      <anchorfile>classStg_1_1CtrlArgs.html</anchorfile>
      <anchor>ab827f93f522bdf46c906ee44ed0ada7c</anchor>
      <arglist>(std::string w, std::string c)</arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>cmdline</name>
      <anchorfile>classStg_1_1CtrlArgs.html</anchorfile>
      <anchor>a036eafa7d11847c6078d6f75a8688289</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>worldfile</name>
      <anchorfile>classStg_1_1CtrlArgs.html</anchorfile>
      <anchor>ab88fb7fbd062ccb91d72594c56a3d07b</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::FileManager</name>
    <filename>classStg_1_1FileManager.html</filename>
    <member kind="function">
      <type></type>
      <name>FileManager</name>
      <anchorfile>classStg_1_1FileManager.html</anchorfile>
      <anchor>a08bb0db5418640109a8e2d8af249e959</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>newWorld</name>
      <anchorfile>classStg_1_1FileManager.html</anchorfile>
      <anchor>aa710f1f27a12081abe81ff1aab7cefbf</anchor>
      <arglist>(const std::string worldfile)</arglist>
    </member>
    <member kind="function">
      <type>const std::string</type>
      <name>worldsRoot</name>
      <anchorfile>classStg_1_1FileManager.html</anchorfile>
      <anchor>ae1cc550c4190417f9881a9515b66c37d</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" static="yes">
      <type>static std::string</type>
      <name>findFile</name>
      <anchorfile>classStg_1_1FileManager.html</anchorfile>
      <anchor>a7e61a73c0d5fa1ffdc4d421854c3b662</anchor>
      <arglist>(const std::string filename)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>readable</name>
      <anchorfile>classStg_1_1FileManager.html</anchorfile>
      <anchor>ae62276b76e8671e5e9c4580a2a079c89</anchor>
      <arglist>(const std::string path)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static std::string</type>
      <name>stagePath</name>
      <anchorfile>classStg_1_1FileManager.html</anchorfile>
      <anchor>a725f9e604cd7abbac25c903e890ba0e9</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Geom</name>
    <filename>classStg_1_1Geom.html</filename>
    <member kind="function">
      <type></type>
      <name>Geom</name>
      <anchorfile>classStg_1_1Geom.html</anchorfile>
      <anchor>a40ab4661cf16dd5c9831b014870e7d25</anchor>
      <arglist>(const Pose &amp;p, const Size &amp;s)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Geom</name>
      <anchorfile>classStg_1_1Geom.html</anchorfile>
      <anchor>a8b242a718fe0f06ad3605b54fef88552</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Print</name>
      <anchorfile>classStg_1_1Geom.html</anchorfile>
      <anchor>ad02db9b96bf52409f75266dfdf16d2d8</anchor>
      <arglist>(const char *prefix)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Zero</name>
      <anchorfile>classStg_1_1Geom.html</anchorfile>
      <anchor>a1a00212d04fde7577ca18fd61853e7d0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>Pose</type>
      <name>pose</name>
      <anchorfile>classStg_1_1Geom.html</anchorfile>
      <anchor>a351d6b2e653d61bb7bb0d11796cbb731</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Size</type>
      <name>size</name>
      <anchorfile>classStg_1_1Geom.html</anchorfile>
      <anchor>aea93a59dd7041460ee29c99dbec82a50</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::LogEntry</name>
    <filename>classStg_1_1LogEntry.html</filename>
    <member kind="function">
      <type></type>
      <name>LogEntry</name>
      <anchorfile>classStg_1_1LogEntry.html</anchorfile>
      <anchor>a11f7296ab7ccedad2ecdd5fc65ac5008</anchor>
      <arglist>(stg_usec_t timestamp, Model *mod)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Clear</name>
      <anchorfile>classStg_1_1LogEntry.html</anchorfile>
      <anchor>adac0284302c288d06a035e8538fc44ff</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static size_t</type>
      <name>Count</name>
      <anchorfile>classStg_1_1LogEntry.html</anchorfile>
      <anchor>a39a676ea3a4e44229eca34bcfae8bd71</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Print</name>
      <anchorfile>classStg_1_1LogEntry.html</anchorfile>
      <anchor>ab9e54b72877edb37d2fb7c1f99eb9cb6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static std::vector&lt; LogEntry &gt;</type>
      <name>log</name>
      <anchorfile>classStg_1_1LogEntry.html</anchorfile>
      <anchor>aae5cddcbfe3640ac3aa7d1db8edf3d20</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Model</name>
    <filename>classStg_1_1Model.html</filename>
    <base>Stg::Ancestor</base>
    <class kind="class">Stg::Model::CallbackHooks</class>
    <class kind="class">Stg::Model::Flag</class>
    <class kind="class">Stg::Model::GuiState</class>
    <class kind="class">Stg::Model::RasterVis</class>
    <class kind="class">Stg::Model::stg_cb_t</class>
    <class kind="class">Stg::Model::TrailItem</class>
    <class kind="class">Stg::Model::Visibility</class>
    <member kind="function">
      <type>Block *</type>
      <name>AddBlockRect</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a1de8ce41acdc7c47e80dca48cc3b0d9e</anchor>
      <arglist>(stg_meters_t x, stg_meters_t y, stg_meters_t dx, stg_meters_t dy, stg_meters_t dz)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>AddCallback</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aefa3e0a42694e213362492eb76cff744</anchor>
      <arglist>(void *address, stg_model_callback_t cb, void *user)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>AddFlag</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aeb0533752322d2294992c4d71a95c659</anchor>
      <arglist>(Flag *flag)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>AddFlagDecrCallback</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a5504d8eda4de2423b82ac5f9131fc2b1</anchor>
      <arglist>(stg_model_callback_t cb, void *user)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>AddFlagIncrCallback</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a72c7e143c2dadb58a2e14834dadbb9a9</anchor>
      <arglist>(stg_model_callback_t cb, void *user)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>AddLoadCallback</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aded207ab22dc8034691bda8ed2660f3a</anchor>
      <arglist>(stg_model_callback_t cb, void *user)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>AddSaveCallback</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ac1c2ad085922f4622072b0a29103d449</anchor>
      <arglist>(stg_model_callback_t cb, void *user)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>AddShutdownCallback</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a013e3957f1a7613f9a09130953c48a94</anchor>
      <arglist>(stg_model_callback_t cb, void *user)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>AddStartupCallback</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a1e28d6c9bf59ed4e445c49388bf11f33</anchor>
      <arglist>(stg_model_callback_t cb, void *user)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>AddToPose</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>acb5f12dda691b35615bd5a09794297bd</anchor>
      <arglist>(double dx, double dy, double dz, double da)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>AddToPose</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a6b2da61fa989f283d2e126ce17af9d6e</anchor>
      <arglist>(const Pose &amp;pose)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>AddUpdateCallback</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a964a4c672396857d3760daf8dfecf984</anchor>
      <arglist>(stg_model_callback_t cb, void *user)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>AddVisualizer</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>acd133c88c29f40da2c7d506a63d8b77d</anchor>
      <arglist>(Visualizer *custom_visual, bool on_by_default)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>BecomeParentOf</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a52b7702809b5cb656a4a3d0800e4be09</anchor>
      <arglist>(Model *child)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>CallCallbacks</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a84e5b26f1c23eed3a073042b64227742</anchor>
      <arglist>(void *address)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ClearBlocks</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a0bda482f31e2bee774e4a05815160e3a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>DataIsFresh</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>afc0008eb507904229be169ff8b07a2a7</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Disable</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>adb3c597d937acdc70dedaf5f600d1823</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Enable</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>abe1eae3d7b4b4380a730d78eb96d9c7c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>PowerPack *</type>
      <name>FindPowerPack</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a142405bba4114f959056bc837f930d97</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>Model *</type>
      <name>GetChild</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>adbe5ae845ec31beca626e035a771339a</anchor>
      <arglist>(const std::string &amp;name) const </arglist>
    </member>
    <member kind="function">
      <type>Color</type>
      <name>GetColor</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>accd702a297cc31d5e5ba00e123e612bc</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>stg_usec_t</type>
      <name>GetEnergyInterval</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a48582f2c718879c33ecbe2ab7700e2db</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>GetFiducialReturn</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ad79635901ddddca5d9de6a1f6f162fde</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>GetFlagCount</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ac41e384036bbee6e1fd37b57ef0753aa</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>Geom</type>
      <name>GetGeom</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a7635997469a28bf87553e33e94684ac5</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>Pose</type>
      <name>GetGlobalPose</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>af94f47e5655aed9b020b50fbc2d0e023</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>Velocity</type>
      <name>GetGlobalVelocity</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a96500516960cb0ca2f3ae660b997ebd8</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>GetId</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aa0f1dfe79cae9575b17d30b3c13b49df</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>stg_kg_t</type>
      <name>GetMassOfChildren</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>af8668ba78ec1547edc34beebd3159d98</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>GetModelType</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>af6c80a9f231460c43b5cd3bdf6b403be</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>Pose</type>
      <name>GetPose</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a989e4f00e89e2c80d6b78ca9008d70eb</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>stg_usec_t</type>
      <name>GetPoseInterval</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a97b5282352ba18241774764997afddde</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const void *</type>
      <name>GetProperty</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a943d5e5fb055459c235864ca1be6d72a</anchor>
      <arglist>(const char *key) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>GetPropertyFloat</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a880d85efff9fe9dcc1ebbbd6da1ce997</anchor>
      <arglist>(const char *key, float *f, float defaultval) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>GetPropertyInt</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a37cb8dad4b21cbfc5610e24b74deb23b</anchor>
      <arglist>(const char *key, int *i, int defaultval) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>GetPropertyStr</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ae5eae4d10ace8cbbf97b31ef94093423</anchor>
      <arglist>(const char *key, char **c, char *defaultval) const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>GetSayString</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a4a74c26bbd705e5660824e28a132b3f2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>unsigned int</type>
      <name>GetSubscriptionCount</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a5fd78568d99a7723d7f1bc91cbba753f</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>stg_kg_t</type>
      <name>GetTotalMass</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aa2ac3d223bc27b9e8e733f7b4d489df1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Model *</type>
      <name>GetUnsubscribedModelOfType</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a6ada58c1dd1a8acf81f15b5c6320de28</anchor>
      <arglist>(const std::string &amp;type) const </arglist>
    </member>
    <member kind="function">
      <type>Model *</type>
      <name>GetUnusedModelOfType</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a82de53802e7dd200b4faff34d4c720f7</anchor>
      <arglist>(const std::string &amp;type)</arglist>
    </member>
    <member kind="function">
      <type>stg_usec_t</type>
      <name>GetUpdateInterval</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>abeea117702935f60a1c44dabbb33e788</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Velocity</type>
      <name>GetVelocity</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>af5b37f8e89b57318ea07186715cea245</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>World *</type>
      <name>GetWorld</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ab500215866d6e4e368c9b5c2b78121f6</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>Pose</type>
      <name>GlobalToLocal</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a26ce2df6ce84c33954709e11f3465bc7</anchor>
      <arglist>(const Pose &amp;pose) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>HasSubscribers</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a51758aa68a27e6ddfe7f05c1c7e646b8</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>InitControllers</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a064e8dd4258548d0558b4741310a045e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>IsAntecedent</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a5fee16036f69b6c144f43c66d468a7a1</anchor>
      <arglist>(const Model *testmod) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>IsDescendent</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>acb1ff8f88a2a472e6e9e4fc7b58021df</anchor>
      <arglist>(const Model *testmod) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>IsRelated</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a27589bf781c00f04a0397cbcc8d8939f</anchor>
      <arglist>(const Model *testmod) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a6974d963ca317999d3cc7ac15adcb940</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>af8cc9b38381df03fe0d11204b98ba532</anchor>
      <arglist>(Worldfile *wf, int wf_entity)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>LoadBlock</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a8fb143f4914196a6de7f9a0cd817af97</anchor>
      <arglist>(Worldfile *wf, int entity)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>LoadControllerModule</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ae510aa7d5e3bda7db2e0a13a05f64148</anchor>
      <arglist>(const char *lib)</arglist>
    </member>
    <member kind="function">
      <type>stg_point_t</type>
      <name>LocalToGlobal</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a61414fd4f31aea6d130ad80ec4de03db</anchor>
      <arglist>(const stg_point_t &amp;pt) const </arglist>
    </member>
    <member kind="function">
      <type>Pose</type>
      <name>LocalToGlobal</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>af46acb21f3d2f256c9e598a070701925</anchor>
      <arglist>(const Pose &amp;pose) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>LocalToPixels</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a94fa2062f66e4c24b2311004f229b4e0</anchor>
      <arglist>(const std::vector&lt; stg_point_t &gt; &amp;local, std::vector&lt; stg_point_int_t &gt; &amp;pixels) const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Model</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>af4d6c56638f7e25f77b5e4df9f9d48f6</anchor>
      <arglist>(World *world, Model *parent=NULL, const std::string &amp;type=&quot;model&quot;)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>NeedRedraw</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ab636044d8a874eaa5ac7b3f7be2428c3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Model *</type>
      <name>Parent</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a5d3569c15679eb72a7c1b778a6469988</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>PlaceInFreeSpace</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>af9da6af6d04f2787f106bc8bafca98ce</anchor>
      <arglist>(stg_meters_t xmin, stg_meters_t xmax, stg_meters_t ymin, stg_meters_t ymax)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>PopColor</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ab74fc2f773ee4eb1ef5e6c4b32077e72</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Flag *</type>
      <name>PopFlag</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a3b528c8efb78826d23478a29f75dd3ea</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>PoseString</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a07b60dc4e4a7b336c8ea97b66b2f3af6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Print</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a5a3e60df40f63cffde99d80361a34986</anchor>
      <arglist>(char *prefix) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual const char *</type>
      <name>PrintWithPose</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a45a48862132784defef51946b28c1ecf</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>PushColor</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>abc196c5c0d766482b92d1f021eb0d647</anchor>
      <arglist>(double r, double g, double b, double a)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>PushColor</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a21d45866839e019e70db9e5720834af9</anchor>
      <arglist>(Color col)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>PushFlag</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a9404ab4e1f30eb6530dbc2e047cce365</anchor>
      <arglist>(Flag *flag)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Rasterize</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a6f685ef91e8e2c74584c8fce35622d4d</anchor>
      <arglist>(uint8_t *data, unsigned int width, unsigned int height, stg_meters_t cellwidth, stg_meters_t cellheight)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>RemoveCallback</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a9fdb6ba7a3f0f16439a0df45bfc0f6f4</anchor>
      <arglist>(void *member, stg_model_callback_t callback)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RemoveFlag</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a4fe7654e826eedd991af2823d635bfc8</anchor>
      <arglist>(Flag *flag)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RemoveFlagDecrCallback</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a9ea35d3e52689d8557219e7636ad8734</anchor>
      <arglist>(stg_model_callback_t cb)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RemoveFlagIncrCallback</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a1dc60bc8ac4879054398cee2a4b17932</anchor>
      <arglist>(stg_model_callback_t cb)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RemoveLoadCallback</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>addcab011ff71496cff8a3f7cca8d3013</anchor>
      <arglist>(stg_model_callback_t cb)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RemoveSaveCallback</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>abffe5947d50531b60cdae742b8a288c3</anchor>
      <arglist>(stg_model_callback_t cb)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RemoveShutdownCallback</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aa1702c7d530ccba7252c9574f4ff9396</anchor>
      <arglist>(stg_model_callback_t cb)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RemoveStartupCallback</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a89809f3aa3449af1ff20de3482b2f6db</anchor>
      <arglist>(stg_model_callback_t cb)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RemoveUpdateCallback</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a5d31b42281c66e531fe13df19eff36de</anchor>
      <arglist>(stg_model_callback_t cb)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RemoveVisualizer</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a30dc19585c0a4680f7a8d83c19879aad</anchor>
      <arglist>(Visualizer *custom_visual)</arglist>
    </member>
    <member kind="function">
      <type>Model *</type>
      <name>Root</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a4f7ffb2b1c10c1a3dac5a2b743c696dd</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Save</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ae1caf7ef46c365bd1743e788d77c116d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Say</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a9da2fa07c00db8c990fdfaf6cbe303b5</anchor>
      <arglist>(const std::string &amp;str)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetBlobReturn</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aa91807db839da5982ec89344e7452b1c</anchor>
      <arglist>(int val)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetBoundary</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a3058ad9f7e7c16dad9fb9835daaf6253</anchor>
      <arglist>(int val)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetColor</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a70de4da5f63e6c115662a9f1cb02d5ad</anchor>
      <arglist>(Color col)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetFiducialKey</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ab7e852dab2fa456fbf887e00cb698809</anchor>
      <arglist>(int key)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetFiducialReturn</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a76db1c5d93a8753dee09a26113f57460</anchor>
      <arglist>(int fid)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetFriction</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ac8b1dfdeec470a62a2fd03b65cb44303</anchor>
      <arglist>(double friction)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetGeom</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ab7e448a4d8558ba2d0ada2c1946720fc</anchor>
      <arglist>(const Geom &amp;src)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetGlobalPose</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ad6f9ffdb22e49e0b2139fe7031688ba4</anchor>
      <arglist>(const Pose &amp;gpose)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetGlobalVelocity</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ae34ca89f118ebe6cd36257743784a235</anchor>
      <arglist>(const Velocity &amp;gvel)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetGravityReturn</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ad718c44b1452607284b9675b04af5122</anchor>
      <arglist>(int val)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetGripperReturn</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a476fedd3ed8384d8ba9ce3c03b6d2003</anchor>
      <arglist>(int val)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetGuiGrid</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a17d7d5a1f097e0c7421c018df68752b4</anchor>
      <arglist>(int val)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetGuiMove</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a59ebbe16eef67df585026f2922ddc5dd</anchor>
      <arglist>(int val)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetGuiNose</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aa98060ff931647c975f44359f07afad7</anchor>
      <arglist>(int val)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetGuiOutline</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>abb0ef41742af0d492896d3911e9ef3f5</anchor>
      <arglist>(int val)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetLaserReturn</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a35aaa32dad3dbd84a4b32846cc74cd2a</anchor>
      <arglist>(stg_laser_return_t val)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetMapResolution</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a43c24f1cea95cf427d91b9eaa06c658d</anchor>
      <arglist>(stg_meters_t res)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetMass</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a15e1757f4c20d6b08cae9106e65a0320</anchor>
      <arglist>(stg_kg_t mass)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetObstacleReturn</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ad1de3725712a57b01444e8ab3cb6292f</anchor>
      <arglist>(int val)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>SetParent</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ae48d9df96b3c1b20b7cc9d666d1150ee</anchor>
      <arglist>(Model *newparent)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetPose</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a78dcb99915a2f451cd2a79f4a1225ae7</anchor>
      <arglist>(const Pose &amp;pose)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>SetProperty</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ab81865db317d22df8a802bc2c32a0fd6</anchor>
      <arglist>(const char *key, const void *data)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetPropertyFloat</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a6a376b5552895c0aa6dfac74a5850462</anchor>
      <arglist>(const char *key, float f)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetPropertyInt</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ad67de948724c3e40f6424b3c0280d2a4</anchor>
      <arglist>(const char *key, int i)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetPropertyStr</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a25e132dcb8c8a1067d38ef1ae060c01b</anchor>
      <arglist>(const char *key, const char *str)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetRangerReturn</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a37eae03d13e3914f85874fda434d12ac</anchor>
      <arglist>(int val)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetStall</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a5edb4af3e3da883044d84859dbf29cf8</anchor>
      <arglist>(stg_bool_t stall)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetStickyReturn</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a6733b2b01a639acce058a65ba0da9c30</anchor>
      <arglist>(int val)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetVelocity</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a9402cf59ab328693d62d9e14a234c883</anchor>
      <arglist>(const Velocity &amp;vel)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetWatts</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a7c325471175daf2cc038fbb0c1f73e38</anchor>
      <arglist>(stg_watts_t watts)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetWorldfile</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a54d4e130cd9b426380bf41bfc7feea73</anchor>
      <arglist>(Worldfile *wf, int wf_entity)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>Stalled</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a0c0893ea0925707410ac431725baba07</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Subscribe</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a75ebe2d1efb770a07dbd8c05745e0bf3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>UnsetProperty</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ae0f0c8e2cbabf4ad57409998663f35fd</anchor>
      <arglist>(const char *key)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Unsubscribe</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a5f45fa5b5d2076bd18d7edffafb97e88</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>VelocityDisable</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a49bce6c610ff2deb3daf337b68983a57</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>VelocityEnable</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a8110c3df863fbcdbed2dd5ad9c907b08</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~Model</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ad6ebd2062a0b823db841a0b88baac4c0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static Model *</type>
      <name>LookupId</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a59ad4f137c847f0ae977a4ae6fc010c8</anchor>
      <arglist>(uint32_t id)</arglist>
    </member>
    <member kind="variable">
      <type>class Stg::Model::Visibility</type>
      <name>vis</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a05c7a70c97efef902fc3d009e0c81cff</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static std::map&lt; std::string, creator_t &gt;</type>
      <name>name_map</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ad4b6399e13420b2d5fb8209387005a49</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>AppendTouchingModels</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>af283ed51cd77bfddfd8dc829094d017e</anchor>
      <arglist>(ModelPtrSet &amp;touchers)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>CommitTestedPose</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a25e25122e53cffadcad0e6a9d0e76ef5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Model *</type>
      <name>ConditionalMove</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a8a37b5d9fa0c85c9de9ecb48c8a1b3c5</anchor>
      <arglist>(const Pose &amp;newpose)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>DataVisualize</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a2e8893e4f386b39794d3d192e8ffe7ae</anchor>
      <arglist>(Camera *cam)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>DataVisualizeTree</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ad6db53037cf2f2a7fe8bdfc6dd6b18bd</anchor>
      <arglist>(Camera *cam)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>DrawBlocks</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>abd5e38658a239d8be462b47badc52fde</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>DrawBlocksTree</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a2f4343f2fcc248b900eae7c0fec99ada</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>DrawBoundingBox</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a648c89828a840290730d0d4073e4fdca</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>DrawBoundingBoxTree</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>acce29ced14c3cffd7e1ff584f837940a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>DrawFlagList</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a1846d1e5b1e828b20d00010d4046145a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>DrawGrid</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>af1ac90203f9646d46abe7338fa3e0a6e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>DrawImage</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aac5d67bd0e4b547fb1be4329d06360a7</anchor>
      <arglist>(uint32_t texture_id, Camera *cam, float alpha, double width=1.0, double height=1.0)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>DrawOrigin</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a72c51be18133d76d3807b8fa211436a6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>DrawOriginTree</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ae27f98f6e29bcbed1c01f35d1be275a3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>DrawPicker</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aeae0ef81ef935fd4438ddec01c34ae56</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>DrawPose</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>accbcb08db03049210edb64b11fd53bfa</anchor>
      <arglist>(Pose pose)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>DrawSelected</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a4fadd0ff19cb5c052e62ad24b3e32e03</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>DrawStatus</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a52b5035974a417b5f076acfd39353390</anchor>
      <arglist>(Camera *cam)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>DrawStatusTree</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>af530c2973a6673ade6a4e23cc98fe6c4</anchor>
      <arglist>(Camera *cam)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>DrawTrailArrows</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aa8ad4335433f8f8f5ac339afd41f53db</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>DrawTrailBlocks</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>accbffc09e3a5a68b03014c82553b83ee</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>DrawTrailFootprint</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a043ac9f9c5991c0d8dea48a132a360af</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>GPoseDirtyTree</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a29977c7ebf429c774796e592d2a3b260</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>LoadDataBaseEntries</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a7cbb9d2339dffe4dcf220f6e6340d635</anchor>
      <arglist>(Worldfile *wf, int entity)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>Map</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>abd35e554972cfadd8f42370736d7d1ce</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>MapFromRoot</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a7a3d7f81897384efcddd65039502baeb</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>MapWithChildren</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a7740dc2fbaa3d802ef08b2e63b949b8d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>stg_meters_t</type>
      <name>ModelHeight</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a0dc886dcb8a78b106549ebea2e66245c</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>PopCoords</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a7ae039253c7dce52e1f6ea6b8cc77519</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>PushLocalCoords</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a9a123e07cf052a9a111c3c3d5aa71758</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>Raytrace</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a99670c050e336371c19371caa9b9e628</anchor>
      <arglist>(const stg_radians_t bearing, const stg_meters_t range, const stg_radians_t fov, const stg_ray_test_func_t func, const void *arg, stg_raytrace_result_t *samples, const uint32_t sample_count, const bool ztest=true)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>stg_raytrace_result_t</type>
      <name>Raytrace</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a90e6152b13063df71cac1ce87b66ca15</anchor>
      <arglist>(const stg_radians_t bearing, const stg_meters_t range, const stg_ray_test_func_t func, const void *arg, const bool ztest=true)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>Raytrace</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a61754efd9508ad232de5a46f4bb3ef02</anchor>
      <arglist>(const Pose &amp;pose, const stg_meters_t range, const stg_radians_t fov, const stg_ray_test_func_t func, const void *arg, stg_raytrace_result_t *samples, const uint32_t sample_count, const bool ztest=true)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>stg_raytrace_result_t</type>
      <name>Raytrace</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a0affc8ac927be84b282000a4fc0318bd</anchor>
      <arglist>(const Pose &amp;pose, const stg_meters_t range, const stg_ray_test_func_t func, const void *arg, const bool ztest=true)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>RegisterOption</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a16108e9fcbadbb1b29a0c17f367875fd</anchor>
      <arglist>(Option *opt)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>Shutdown</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aced6210805fba37b597e42b0c3020c2c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>Startup</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a76f30955dd68d6abe6ea85e77403ae1a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Model *</type>
      <name>TestCollision</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a978e578f3796169195907bd4bc610933</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Model *</type>
      <name>TestCollisionTree</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a8445c1f401c538a1bb179c2c41dcb373</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>UnMap</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a324d75bfcfaebc918c8d937bd8b8cfad</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>UnMapFromRoot</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>afd5256e182c914e4e8fcf0b7e6ea6d25</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>UnMapWithChildren</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ab4ff88ae483dffb34f8f0dc707f4c9eb</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>Update</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aa83183aaf1b9ef29bf554a2ce10b40eb</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>UpdateCharge</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>afced57969e44a0ffde2a94abf5fbf19a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>UpdatePose</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a654eebe2308630a9d3789cfd23dafe0c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>UpdateTrail</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aa94ad46ed8796a53523c8e19810b3981</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>pthread_mutex_t</type>
      <name>access_mutex</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ad253a6d6928eee0094c9a8f73924b3fd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>alwayson</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>abc0f6f127889cffa04dbc05a60672ac5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>BlockGroup</type>
      <name>blockgroup</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a188c571f97f1d9bff5212f457820d226</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>int</type>
      <name>blocks_dl</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a5b7d7e67081fdf740ce1d3385687ea13</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>int</type>
      <name>boundary</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a089184e0aebb8319086063dbe083cb30</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>Color</type>
      <name>color</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a6cfb24f85e2dfb14369de4f5716840d3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::list&lt; Visualizer * &gt;</type>
      <name>cv_list</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aca6f924647590af4d94963742ae89763</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>data_fresh</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a5dd89c9166ae08fb95485a50ee18b128</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>stg_bool_t</type>
      <name>disabled</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a838ad9f18a15a8a2d29cd67a16534573</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>unsigned int</type>
      <name>event_queue_num</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ac91e6053d45c72087ae21913d35b5901</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::list&lt; Flag * &gt;</type>
      <name>flag_list</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aca28d2b61e825db9cc265207025eaeec</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>double</type>
      <name>friction</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a6e4d6844ac6da95955f95ddcb048dc3d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>Geom</type>
      <name>geom</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a54c95289cfd9cb097fd3f6d6f9148803</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>class Stg::Model::GuiState</type>
      <name>gui</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ade19c6f345be6b9a619628486090a635</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>has_default_block</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a0680aa184d102f26cacd4dd7547c853a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>class Stg::Model::CallbackHooks</type>
      <name>hooks</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a7bf14712256f0b376565f3cd8680a969</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>uint32_t</type>
      <name>id</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>af487168405a1d6a7cccd20024f8884d3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>stg_usec_t</type>
      <name>interval</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a9f58c405c14e4b0b18daba5ca356df27</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>stg_usec_t</type>
      <name>interval_energy</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aed9adb578b40c1781256bc216dbc8058</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>stg_usec_t</type>
      <name>interval_pose</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ad7b9bae0de20f94ceab88d51616d8632</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>stg_usec_t</type>
      <name>last_update</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ad097c1df6d40372b0f7b6d0b57193b30</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>log_state</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aa4170f3e568ca7dd86eea706afc2ffe8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>stg_meters_t</type>
      <name>map_resolution</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a892e17eec4fe9c178a2a46e1ac4a961a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>stg_kg_t</type>
      <name>mass</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a7db09d07b40f9c0afc43b33253f3fb99</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>Model *</type>
      <name>parent</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a035961ff37b87925ab8b850e4243352d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>Pose</type>
      <name>pose</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a4e004855f72d4713dade76912a66b657</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>PowerPack *</type>
      <name>power_pack</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a09b7c69c3d34825b1a71ef942cd3d5c5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::list&lt; PowerPack * &gt;</type>
      <name>pps_charging</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ade0b1824cdf5f2d7f9033f1a68f67787</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::map&lt; std::string, const void * &gt;</type>
      <name>props</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>acaa0e0e618543666c8cd35bc9fb62a11</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>Stg::Model::RasterVis</type>
      <name>rastervis</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a5bcb74e140e8047bce9bf86532314579</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>rebuild_displaylist</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aedb67324cef53b3f888e48765d882919</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::string</type>
      <name>say_string</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>af20b42d267caa7c02e2b4868a1242d18</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>stg_bool_t</type>
      <name>stall</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aee42e1c927e2ec3998fe365d8b9615fb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>int</type>
      <name>subs</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aad31c7b518b657d835cbe9e51b56a194</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>thread_safe</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a04ed2cb68aa5b041a3567454432dfd03</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::list&lt; TrailItem &gt;</type>
      <name>trail</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>aec111b67fd17167599d0fc2b5f44bc57</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>const std::string</type>
      <name>type</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ae4562b9a879803d8b525defe7aa394e6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>used</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a65bcc7adce4d2770f8f8d619726c5d27</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>Velocity</type>
      <name>velocity</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ae8f024f668151d186238bb1ce12fb53a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>velocity_enable</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ac2ba8b32f3cdbd79915f61aedf70e695</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>stg_watts_t</type>
      <name>watts</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a4368d9d2d4eb53b5464767321be6744c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>stg_watts_t</type>
      <name>watts_give</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>adaa7e1583edcbb1e25a68de6f4115953</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>stg_watts_t</type>
      <name>watts_take</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a53ab7c3ceb81b8ffa1dbfe4bdb9f1f77</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>Worldfile *</type>
      <name>wf</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>ac56d7e24e5947a7561c18a008467efee</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>int</type>
      <name>wf_entity</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a814748e48d719c3d26cb5d72a6c5c4d2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>World *</type>
      <name>world</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a76259259432988aab43be67638ab7adb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>WorldGui *</type>
      <name>world_gui</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a9428c24f8af6a033842c93e07b42ec9e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static std::map&lt; void *, std::set&lt; stg_cb_t &gt; &gt;</type>
      <name>callbacks</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a773e1343606152dc701a0fff9822b6f7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static uint64_t</type>
      <name>trail_interval</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a9bfc9d10c8d61ea76e6b984005047d4f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static unsigned int</type>
      <name>trail_length</name>
      <anchorfile>classStg_1_1Model.html</anchorfile>
      <anchor>a90eae0c0e6f1004b7e8336b62d48b17c</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Model::CallbackHooks</name>
    <filename>classStg_1_1Model_1_1CallbackHooks.html</filename>
    <member kind="function">
      <type></type>
      <name>CallbackHooks</name>
      <anchorfile>classStg_1_1Model_1_1CallbackHooks.html</anchorfile>
      <anchor>ad66d27967bf51f1ef88a42df47a90c16</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>attached_pose</name>
      <anchorfile>classStg_1_1Model_1_1CallbackHooks.html</anchorfile>
      <anchor>a3fe442e3e78105182227b03648881c58</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>attached_update</name>
      <anchorfile>classStg_1_1Model_1_1CallbackHooks.html</anchorfile>
      <anchor>a5b015d9e3b5342c4e823b2a4b3cefab2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>attached_velocity</name>
      <anchorfile>classStg_1_1Model_1_1CallbackHooks.html</anchorfile>
      <anchor>afe0b6a34626ad953ee7a7029a8198036</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>flag_decr</name>
      <anchorfile>classStg_1_1Model_1_1CallbackHooks.html</anchorfile>
      <anchor>a783d33d1edfaeb7d8ee4228d8d7b038b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>flag_incr</name>
      <anchorfile>classStg_1_1Model_1_1CallbackHooks.html</anchorfile>
      <anchor>a7927891f0bcbbb5b1b972e2d0128ffc8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>init</name>
      <anchorfile>classStg_1_1Model_1_1CallbackHooks.html</anchorfile>
      <anchor>a36236f0028670bf63acc5eeab0ec4612</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>load</name>
      <anchorfile>classStg_1_1Model_1_1CallbackHooks.html</anchorfile>
      <anchor>a8381dd39952f424e398d02ccbdadc1db</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>save</name>
      <anchorfile>classStg_1_1Model_1_1CallbackHooks.html</anchorfile>
      <anchor>a396e334981e5f3a9e473453edc3c5fb4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>shutdown</name>
      <anchorfile>classStg_1_1Model_1_1CallbackHooks.html</anchorfile>
      <anchor>a23c5361f6b1f58a3b62771a6f0c8b169</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>startup</name>
      <anchorfile>classStg_1_1Model_1_1CallbackHooks.html</anchorfile>
      <anchor>ac91e65f29eb7ab7772182f6157e1c402</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>update</name>
      <anchorfile>classStg_1_1Model_1_1CallbackHooks.html</anchorfile>
      <anchor>a7a65fa9059d4ca51d80c029d770f7b4d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>update_done</name>
      <anchorfile>classStg_1_1Model_1_1CallbackHooks.html</anchorfile>
      <anchor>af0e3a90af0856890741cc39562b6cc75</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Model::Flag</name>
    <filename>classStg_1_1Model_1_1Flag.html</filename>
    <member kind="function">
      <type>void</type>
      <name>Draw</name>
      <anchorfile>classStg_1_1Model_1_1Flag.html</anchorfile>
      <anchor>ae2068693748fda3f082873755f65770c</anchor>
      <arglist>(GLUquadric *quadric)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Flag</name>
      <anchorfile>classStg_1_1Model_1_1Flag.html</anchorfile>
      <anchor>ad340b9b80b0b60922260208dff2c8097</anchor>
      <arglist>(Color color, double size)</arglist>
    </member>
    <member kind="function">
      <type>Flag *</type>
      <name>Nibble</name>
      <anchorfile>classStg_1_1Model_1_1Flag.html</anchorfile>
      <anchor>a9640eb9136ce0648a7f9c47fbadd105c</anchor>
      <arglist>(double portion)</arglist>
    </member>
    <member kind="variable">
      <type>Color</type>
      <name>color</name>
      <anchorfile>classStg_1_1Model_1_1Flag.html</anchorfile>
      <anchor>a5bcbf3e6647a1f3801757b49cc4f1345</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>double</type>
      <name>size</name>
      <anchorfile>classStg_1_1Model_1_1Flag.html</anchorfile>
      <anchor>a8df3bff511f2292abed2fd6d49e2aba6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static int</type>
      <name>displaylist</name>
      <anchorfile>classStg_1_1Model_1_1Flag.html</anchorfile>
      <anchor>aa3e1038e71bdc595db661534307db50b</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Model::GuiState</name>
    <filename>classStg_1_1Model_1_1GuiState.html</filename>
    <member kind="function">
      <type></type>
      <name>GuiState</name>
      <anchorfile>classStg_1_1Model_1_1GuiState.html</anchorfile>
      <anchor>a2c674761d2b1f1cccf94279e5b4715d4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1Model_1_1GuiState.html</anchorfile>
      <anchor>a503d549b3656f709834ed820c630774b</anchor>
      <arglist>(Worldfile *wf, int wf_entity)</arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>grid</name>
      <anchorfile>classStg_1_1Model_1_1GuiState.html</anchorfile>
      <anchor>a6c3971196aa4a5a47b9e9e434aa9c09c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>move</name>
      <anchorfile>classStg_1_1Model_1_1GuiState.html</anchorfile>
      <anchor>a97415f59bc9b44c4b4a6a3730c88d5a0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>nose</name>
      <anchorfile>classStg_1_1Model_1_1GuiState.html</anchorfile>
      <anchor>aba0111c8e906583c2b2a2642dc500ac6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>outline</name>
      <anchorfile>classStg_1_1Model_1_1GuiState.html</anchorfile>
      <anchor>a6906258e9eff244dd3a8839c55634b61</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Model::RasterVis</name>
    <filename>classStg_1_1Model_1_1RasterVis.html</filename>
    <base>Stg::Visualizer</base>
    <member kind="function">
      <type>void</type>
      <name>AddPoint</name>
      <anchorfile>classStg_1_1Model_1_1RasterVis.html</anchorfile>
      <anchor>ac8e7880b1c6ffd613b8f3c6ebbb02645</anchor>
      <arglist>(stg_meters_t x, stg_meters_t y)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ClearPts</name>
      <anchorfile>classStg_1_1Model_1_1RasterVis.html</anchorfile>
      <anchor>ab155ee411c69d12eddb05e5aae097f02</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>RasterVis</name>
      <anchorfile>classStg_1_1Model_1_1RasterVis.html</anchorfile>
      <anchor>aeee19babbdb3e125d1d892346648585a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetData</name>
      <anchorfile>classStg_1_1Model_1_1RasterVis.html</anchorfile>
      <anchor>ac9b7cfb9e490347ed4dd77c9fb8bbfef</anchor>
      <arglist>(uint8_t *data, unsigned int width, unsigned int height, stg_meters_t cellwidth, stg_meters_t cellheight)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Visualize</name>
      <anchorfile>classStg_1_1Model_1_1RasterVis.html</anchorfile>
      <anchor>aab76a463b280481e53d36fb9bbfce54d</anchor>
      <arglist>(Model *mod, Camera *cam)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~RasterVis</name>
      <anchorfile>classStg_1_1Model_1_1RasterVis.html</anchorfile>
      <anchor>ac1c102051dea7eb5eeee10c0fe56f11f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>subs</name>
      <anchorfile>classStg_1_1Model_1_1RasterVis.html</anchorfile>
      <anchor>af31ae8f28afc411d7de3ee57beed6998</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>used</name>
      <anchorfile>classStg_1_1Model_1_1RasterVis.html</anchorfile>
      <anchor>a3864a7992bf518183335c726cff1d222</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Model::stg_cb_t</name>
    <filename>classStg_1_1Model_1_1stg__cb__t.html</filename>
    <member kind="function">
      <type>bool</type>
      <name>operator&lt;</name>
      <anchorfile>classStg_1_1Model_1_1stg__cb__t.html</anchorfile>
      <anchor>a9829b4c59ef6c0a8366f52e501b15130</anchor>
      <arglist>(const stg_cb_t &amp;other) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classStg_1_1Model_1_1stg__cb__t.html</anchorfile>
      <anchor>a62e3b63edf5eaaaba2ff8ee09d3dba9a</anchor>
      <arglist>(const stg_cb_t &amp;other) const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>stg_cb_t</name>
      <anchorfile>classStg_1_1Model_1_1stg__cb__t.html</anchorfile>
      <anchor>a8fd948e028d41f5418ddd2890add2f65</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>stg_cb_t</name>
      <anchorfile>classStg_1_1Model_1_1stg__cb__t.html</anchorfile>
      <anchor>a2e9091daeba8191b6f0f50d8b07a4246</anchor>
      <arglist>(stg_world_callback_t cb, void *arg)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>stg_cb_t</name>
      <anchorfile>classStg_1_1Model_1_1stg__cb__t.html</anchorfile>
      <anchor>aea9f90e55f474edcce4959913eaa6290</anchor>
      <arglist>(stg_model_callback_t cb, void *arg)</arglist>
    </member>
    <member kind="variable">
      <type>void *</type>
      <name>arg</name>
      <anchorfile>classStg_1_1Model_1_1stg__cb__t.html</anchorfile>
      <anchor>ac3a3e56a6b7d35ea2c3c9684e5a77559</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_model_callback_t</type>
      <name>callback</name>
      <anchorfile>classStg_1_1Model_1_1stg__cb__t.html</anchorfile>
      <anchor>a6a10b1d52be2d68999db63fa64948d18</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Model::TrailItem</name>
    <filename>classStg_1_1Model_1_1TrailItem.html</filename>
    <member kind="function">
      <type></type>
      <name>TrailItem</name>
      <anchorfile>classStg_1_1Model_1_1TrailItem.html</anchorfile>
      <anchor>a7f629b6b46576c7472ef844190c11892</anchor>
      <arglist>(stg_usec_t time, Pose pose, Color color)</arglist>
    </member>
    <member kind="variable">
      <type>Color</type>
      <name>color</name>
      <anchorfile>classStg_1_1Model_1_1TrailItem.html</anchorfile>
      <anchor>a83b72916672ed41fbd97e33fece9423e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Pose</type>
      <name>pose</name>
      <anchorfile>classStg_1_1Model_1_1TrailItem.html</anchorfile>
      <anchor>a19010d0d68b92859450ba81d3528429b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_usec_t</type>
      <name>time</name>
      <anchorfile>classStg_1_1Model_1_1TrailItem.html</anchorfile>
      <anchor>afbc2e4b7fe4685d160f23c7ea33aaebd</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Model::Visibility</name>
    <filename>classStg_1_1Model_1_1Visibility.html</filename>
    <member kind="function">
      <type>void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1Model_1_1Visibility.html</anchorfile>
      <anchor>a9efe76940e0e57fdce20b6e932b328d2</anchor>
      <arglist>(Worldfile *wf, int wf_entity)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Visibility</name>
      <anchorfile>classStg_1_1Model_1_1Visibility.html</anchorfile>
      <anchor>aec498f2b711c26db2c1c74c718f8064d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>blob_return</name>
      <anchorfile>classStg_1_1Model_1_1Visibility.html</anchorfile>
      <anchor>aa16e8d402b772c1dd574ad59f16e16f8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>fiducial_key</name>
      <anchorfile>classStg_1_1Model_1_1Visibility.html</anchorfile>
      <anchor>a477404279aed802b7f3050c23d185d51</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>fiducial_return</name>
      <anchorfile>classStg_1_1Model_1_1Visibility.html</anchorfile>
      <anchor>a9257fd6696c91051fb264cd2040bf602</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>gravity_return</name>
      <anchorfile>classStg_1_1Model_1_1Visibility.html</anchorfile>
      <anchor>abd342e4bc701959aeeebfe1c245f9d82</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>gripper_return</name>
      <anchorfile>classStg_1_1Model_1_1Visibility.html</anchorfile>
      <anchor>afd11f00b42d5bbfe42b8e192e32b5240</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_laser_return_t</type>
      <name>laser_return</name>
      <anchorfile>classStg_1_1Model_1_1Visibility.html</anchorfile>
      <anchor>aecef733657f294b77e048a16f60cd03d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>obstacle_return</name>
      <anchorfile>classStg_1_1Model_1_1Visibility.html</anchorfile>
      <anchor>aeb651b323dc7d31acaa50120f0c39cd9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>ranger_return</name>
      <anchorfile>classStg_1_1Model_1_1Visibility.html</anchorfile>
      <anchor>aa7f5b79878ee4d93329a59161b3d6a62</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>sticky_return</name>
      <anchorfile>classStg_1_1Model_1_1Visibility.html</anchorfile>
      <anchor>a5d1319ae545f197a50e74a9dc086326d</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::ModelActuator</name>
    <filename>classStg_1_1ModelActuator.html</filename>
    <base>Stg::Model</base>
    <member kind="enumeration">
      <name>ActuatorType</name>
      <anchorfile>classStg_1_1ModelActuator.html</anchorfile>
      <anchor>a59deab0059abee606096514425a704b6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TYPE_LINEAR</name>
      <anchorfile>classStg_1_1ModelActuator.html</anchorfile>
      <anchor>a59deab0059abee606096514425a704b6a3d0b49489e0a85c9d27f89e5d35c73e0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TYPE_ROTATIONAL</name>
      <anchorfile>classStg_1_1ModelActuator.html</anchorfile>
      <anchor>a59deab0059abee606096514425a704b6a5315149e223f9a58f490124c4f41f535</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>ControlMode</name>
      <anchorfile>classStg_1_1ModelActuator.html</anchorfile>
      <anchor>a23ba2925ee05206d24dd3717262da620</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CONTROL_VELOCITY</name>
      <anchorfile>classStg_1_1ModelActuator.html</anchorfile>
      <anchor>a23ba2925ee05206d24dd3717262da620a809e95de9cf850347378616aae3a9b24</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CONTROL_POSITION</name>
      <anchorfile>classStg_1_1ModelActuator.html</anchorfile>
      <anchor>a23ba2925ee05206d24dd3717262da620a83bef53816311fe30fd5b7bd55c41507</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>GetMaxPosition</name>
      <anchorfile>classStg_1_1ModelActuator.html</anchorfile>
      <anchor>a0eb25d9b9952cd1b63c4d45e76c59906</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>GetMinPosition</name>
      <anchorfile>classStg_1_1ModelActuator.html</anchorfile>
      <anchor>abc151d77b0e9bc0329c7e6ec62eadb53</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>GetPosition</name>
      <anchorfile>classStg_1_1ModelActuator.html</anchorfile>
      <anchor>a14d181ef73fccb1b5ff973ca4eabe28c</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>GetSpeed</name>
      <anchorfile>classStg_1_1ModelActuator.html</anchorfile>
      <anchor>a4e8c7fae2bbcc76d19b502ae9f7c9084</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>GoTo</name>
      <anchorfile>classStg_1_1ModelActuator.html</anchorfile>
      <anchor>af4f2b186377c109fed998b31c3b7164f</anchor>
      <arglist>(double pose)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1ModelActuator.html</anchorfile>
      <anchor>a17547b2c48b7369f161ab7f344a7be86</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ModelActuator</name>
      <anchorfile>classStg_1_1ModelActuator.html</anchorfile>
      <anchor>af210162efb1508a081409f50f92e35b3</anchor>
      <arglist>(World *world, Model *parent, const std::string &amp;type)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetSpeed</name>
      <anchorfile>classStg_1_1ModelActuator.html</anchorfile>
      <anchor>a7b97a871e8942308610971327a9fed3a</anchor>
      <arglist>(double speed)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Shutdown</name>
      <anchorfile>classStg_1_1ModelActuator.html</anchorfile>
      <anchor>aab4e8fb0c773ac30745f182c89864118</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Startup</name>
      <anchorfile>classStg_1_1ModelActuator.html</anchorfile>
      <anchor>a92be204a6fd4bd962168f526aa3328d2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Update</name>
      <anchorfile>classStg_1_1ModelActuator.html</anchorfile>
      <anchor>acdbb9f56a67b03dba2f0a7aca440c576</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~ModelActuator</name>
      <anchorfile>classStg_1_1ModelActuator.html</anchorfile>
      <anchor>a154d1bfaa3133a10ceaaf39fdd1a50f1</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::ModelBlinkenlight</name>
    <filename>classStg_1_1ModelBlinkenlight.html</filename>
    <base>Stg::Model</base>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>DataVisualize</name>
      <anchorfile>classStg_1_1ModelBlinkenlight.html</anchorfile>
      <anchor>a46bf9d8625e7add0b73037fe625842f0</anchor>
      <arglist>(Camera *cam)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1ModelBlinkenlight.html</anchorfile>
      <anchor>a730b006e559d66a3df55c3070bf4f613</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ModelBlinkenlight</name>
      <anchorfile>classStg_1_1ModelBlinkenlight.html</anchorfile>
      <anchor>a3ba4afe72b913a68aa302bdab64fa223</anchor>
      <arglist>(World *world, Model *parent, const std::string &amp;type)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Update</name>
      <anchorfile>classStg_1_1ModelBlinkenlight.html</anchorfile>
      <anchor>a2e295df991035e809c850e6b0d817f5c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~ModelBlinkenlight</name>
      <anchorfile>classStg_1_1ModelBlinkenlight.html</anchorfile>
      <anchor>a7b9619fa09fbbe9e15e5fb4423e1cb26</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::ModelBlobfinder</name>
    <filename>classStg_1_1ModelBlobfinder.html</filename>
    <base>Stg::Model</base>
    <class kind="class">Stg::ModelBlobfinder::Blob</class>
    <class kind="class">Stg::ModelBlobfinder::Vis</class>
    <member kind="function">
      <type>void</type>
      <name>AddColor</name>
      <anchorfile>classStg_1_1ModelBlobfinder.html</anchorfile>
      <anchor>a38a527709a897b5b9193a479df81c1da</anchor>
      <arglist>(Color col)</arglist>
    </member>
    <member kind="function">
      <type>Blob *</type>
      <name>GetBlobs</name>
      <anchorfile>classStg_1_1ModelBlobfinder.html</anchorfile>
      <anchor>a0dde9f83faa7a80f2542a614c209b1fc</anchor>
      <arglist>(unsigned int *count)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1ModelBlobfinder.html</anchorfile>
      <anchor>aa92d3b0cbe35edca2470b1a683139376</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ModelBlobfinder</name>
      <anchorfile>classStg_1_1ModelBlobfinder.html</anchorfile>
      <anchor>a0c70138080d8fbde5c1276276e55a595</anchor>
      <arglist>(World *world, Model *parent, const std::string &amp;type)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RemoveAllColors</name>
      <anchorfile>classStg_1_1ModelBlobfinder.html</anchorfile>
      <anchor>a5868eb8fca8b4b9d0a8d4377de09f7af</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RemoveColor</name>
      <anchorfile>classStg_1_1ModelBlobfinder.html</anchorfile>
      <anchor>acca5b9056e1b3e224c59b03952513198</anchor>
      <arglist>(Color col)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Shutdown</name>
      <anchorfile>classStg_1_1ModelBlobfinder.html</anchorfile>
      <anchor>ad8aae6ce107bdebd46cd6b883500ee3e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Startup</name>
      <anchorfile>classStg_1_1ModelBlobfinder.html</anchorfile>
      <anchor>af47c285de447c893d99049add1e58d4d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Update</name>
      <anchorfile>classStg_1_1ModelBlobfinder.html</anchorfile>
      <anchor>a4fbc5cbabd7f28920916c6c73f60b5c3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~ModelBlobfinder</name>
      <anchorfile>classStg_1_1ModelBlobfinder.html</anchorfile>
      <anchor>aaa3287f4b435b21f4627a5f41b9ffa4e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>stg_radians_t</type>
      <name>fov</name>
      <anchorfile>classStg_1_1ModelBlobfinder.html</anchorfile>
      <anchor>a8eaa6c5c15937358a0f3cd002d055578</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_radians_t</type>
      <name>pan</name>
      <anchorfile>classStg_1_1ModelBlobfinder.html</anchorfile>
      <anchor>a7533001d5cda923ded12d221c181bb61</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>range</name>
      <anchorfile>classStg_1_1ModelBlobfinder.html</anchorfile>
      <anchor>ac0e5da0b8a837f871cf7db47d071d9c8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned int</type>
      <name>scan_height</name>
      <anchorfile>classStg_1_1ModelBlobfinder.html</anchorfile>
      <anchor>ae4f2b1f964d7a288d1c87203cf7fdf49</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned int</type>
      <name>scan_width</name>
      <anchorfile>classStg_1_1ModelBlobfinder.html</anchorfile>
      <anchor>a9cf1b9e1755ac7b6a810a17351b86982</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Stg::ModelBlobfinder::Vis</type>
      <name>vis</name>
      <anchorfile>classStg_1_1ModelBlobfinder.html</anchorfile>
      <anchor>aa80a9ad4f4e81d26c3c238c1a67e69ee</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::ModelBlobfinder::Blob</name>
    <filename>classStg_1_1ModelBlobfinder_1_1Blob.html</filename>
    <member kind="variable">
      <type>uint32_t</type>
      <name>bottom</name>
      <anchorfile>classStg_1_1ModelBlobfinder_1_1Blob.html</anchorfile>
      <anchor>a0a7a934ee3ffa43e9c4fe2ba8a71d6f2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Color</type>
      <name>color</name>
      <anchorfile>classStg_1_1ModelBlobfinder_1_1Blob.html</anchorfile>
      <anchor>a78741c809256e79ea16c28c823bf9ba5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>left</name>
      <anchorfile>classStg_1_1ModelBlobfinder_1_1Blob.html</anchorfile>
      <anchor>a0fc926db83238f804b8d056a7c6b3f51</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>range</name>
      <anchorfile>classStg_1_1ModelBlobfinder_1_1Blob.html</anchorfile>
      <anchor>aa676e5d47f9657d9257f0157a5c2efe3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>right</name>
      <anchorfile>classStg_1_1ModelBlobfinder_1_1Blob.html</anchorfile>
      <anchor>a483501955f27b3158a77bf19b5e59c8d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>top</name>
      <anchorfile>classStg_1_1ModelBlobfinder_1_1Blob.html</anchorfile>
      <anchor>aa4f2fcd6ad5117d0b6d7fc9af479d611</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::ModelBlobfinder::Vis</name>
    <filename>classStg_1_1ModelBlobfinder_1_1Vis.html</filename>
    <base>Stg::Visualizer</base>
    <member kind="function">
      <type></type>
      <name>Vis</name>
      <anchorfile>classStg_1_1ModelBlobfinder_1_1Vis.html</anchorfile>
      <anchor>a3d33b5d25f298dbed4f07b4de9c0cfa1</anchor>
      <arglist>(World *world)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Visualize</name>
      <anchorfile>classStg_1_1ModelBlobfinder_1_1Vis.html</anchorfile>
      <anchor>a2b5d6bd96e495d76ca646928dcbb0d3d</anchor>
      <arglist>(Model *mod, Camera *cam)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~Vis</name>
      <anchorfile>classStg_1_1ModelBlobfinder_1_1Vis.html</anchorfile>
      <anchor>a90694b61db1512b20740e1f29730ca72</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::ModelCamera</name>
    <filename>classStg_1_1ModelCamera.html</filename>
    <base>Stg::Model</base>
    <class kind="struct">Stg::ModelCamera::ColoredVertex</class>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>DataVisualize</name>
      <anchorfile>classStg_1_1ModelCamera.html</anchorfile>
      <anchor>adc5b9a0702afae5876f58b2140986d31</anchor>
      <arglist>(Camera *cam)</arglist>
    </member>
    <member kind="function">
      <type>const GLubyte *</type>
      <name>FrameColor</name>
      <anchorfile>classStg_1_1ModelCamera.html</anchorfile>
      <anchor>a43a0b7c752a95b27eec252bd1e3b687a</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const GLfloat *</type>
      <name>FrameDepth</name>
      <anchorfile>classStg_1_1ModelCamera.html</anchorfile>
      <anchor>afb4960630b845d93f38777460ae9c800</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const PerspectiveCamera &amp;</type>
      <name>getCamera</name>
      <anchorfile>classStg_1_1ModelCamera.html</anchorfile>
      <anchor>a3e9b88091e002b8fe0ba457a737f1354</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getHeight</name>
      <anchorfile>classStg_1_1ModelCamera.html</anchorfile>
      <anchor>aa7ef00eab24cdb5d5a5966af14e95818</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getWidth</name>
      <anchorfile>classStg_1_1ModelCamera.html</anchorfile>
      <anchor>ac1df668b8d043c8bb75d656e88cf47f3</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1ModelCamera.html</anchorfile>
      <anchor>adde513f2028b2b173c8b4231705b612c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ModelCamera</name>
      <anchorfile>classStg_1_1ModelCamera.html</anchorfile>
      <anchor>acb726d0750a6af7f11bdb718684b22e1</anchor>
      <arglist>(World *world, Model *parent, const std::string &amp;type)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setPitch</name>
      <anchorfile>classStg_1_1ModelCamera.html</anchorfile>
      <anchor>ad45f53f79c0d6402c09741426c1f3795</anchor>
      <arglist>(float pitch)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setYaw</name>
      <anchorfile>classStg_1_1ModelCamera.html</anchorfile>
      <anchor>a103b04b6ce246fd48ff1cd7e8ffec9a2</anchor>
      <arglist>(float yaw)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Update</name>
      <anchorfile>classStg_1_1ModelCamera.html</anchorfile>
      <anchor>a2d34f220070af5879b56d580a90f3dac</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~ModelCamera</name>
      <anchorfile>classStg_1_1ModelCamera.html</anchorfile>
      <anchor>a95f378e00e0464fa504eadf1c36155e8</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Stg::ModelCamera::ColoredVertex</name>
    <filename>structStg_1_1ModelCamera_1_1ColoredVertex.html</filename>
    <member kind="variable">
      <type>GLfloat</type>
      <name>x</name>
      <anchorfile>structStg_1_1ModelCamera_1_1ColoredVertex.html</anchorfile>
      <anchor>a154745f1335b7dac40989d43b0d9ff27</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>GLfloat</type>
      <name>y</name>
      <anchorfile>structStg_1_1ModelCamera_1_1ColoredVertex.html</anchorfile>
      <anchor>add6d4771a909acd7c5dae39ed7e737e0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>GLfloat</type>
      <name>z</name>
      <anchorfile>structStg_1_1ModelCamera_1_1ColoredVertex.html</anchorfile>
      <anchor>a248d558f64441587c1da6443a6f1cf4d</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::ModelFiducial</name>
    <filename>classStg_1_1ModelFiducial.html</filename>
    <base>Stg::Model</base>
    <class kind="class">Stg::ModelFiducial::Fiducial</class>
    <member kind="function">
      <type>Fiducial *</type>
      <name>GetFiducials</name>
      <anchorfile>classStg_1_1ModelFiducial.html</anchorfile>
      <anchor>a1a06bcd75032cba1859632dbae19ad93</anchor>
      <arglist>(unsigned int *count)</arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; Fiducial &gt; &amp;</type>
      <name>GetFiducials</name>
      <anchorfile>classStg_1_1ModelFiducial.html</anchorfile>
      <anchor>a1ae000bafc727368dc340c6fac312aa0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1ModelFiducial.html</anchorfile>
      <anchor>a1a58e57849ad849e254bfa3e92c2af89</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ModelFiducial</name>
      <anchorfile>classStg_1_1ModelFiducial.html</anchorfile>
      <anchor>a955c32499f8c645446cbe0b28a305a9b</anchor>
      <arglist>(World *world, Model *parent, const std::string &amp;type)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Shutdown</name>
      <anchorfile>classStg_1_1ModelFiducial.html</anchorfile>
      <anchor>af9f979a144f65f3288d210647c4a7a1f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~ModelFiducial</name>
      <anchorfile>classStg_1_1ModelFiducial.html</anchorfile>
      <anchor>ae68cdade18039a413c1dd3ae87f2eaaf</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>stg_radians_t</type>
      <name>fov</name>
      <anchorfile>classStg_1_1ModelFiducial.html</anchorfile>
      <anchor>ac091b3a60dfa1c4166f1f6124e68f997</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_radians_t</type>
      <name>heading</name>
      <anchorfile>classStg_1_1ModelFiducial.html</anchorfile>
      <anchor>ad7d528691147e0884e319ce1f74136cd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>key</name>
      <anchorfile>classStg_1_1ModelFiducial.html</anchorfile>
      <anchor>a9286e788c18641a4851ba1e21757ce6b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>max_range_anon</name>
      <anchorfile>classStg_1_1ModelFiducial.html</anchorfile>
      <anchor>a46d303fdaf0d82c173e745c28a3132e7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>max_range_id</name>
      <anchorfile>classStg_1_1ModelFiducial.html</anchorfile>
      <anchor>a60ee1520226612b2abb76969a2ba01bf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>min_range</name>
      <anchorfile>classStg_1_1ModelFiducial.html</anchorfile>
      <anchor>a8da81f1792674b4953cfb19b0dee3fcf</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::ModelFiducial::Fiducial</name>
    <filename>classStg_1_1ModelFiducial_1_1Fiducial.html</filename>
    <member kind="variable">
      <type>stg_radians_t</type>
      <name>bearing</name>
      <anchorfile>classStg_1_1ModelFiducial_1_1Fiducial.html</anchorfile>
      <anchor>a1c963bf0f990b17c9ba32855eaeae501</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Pose</type>
      <name>geom</name>
      <anchorfile>classStg_1_1ModelFiducial_1_1Fiducial.html</anchorfile>
      <anchor>ac3c37f86cce79e02ada478755561bdd5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>id</name>
      <anchorfile>classStg_1_1ModelFiducial_1_1Fiducial.html</anchorfile>
      <anchor>a67e7c12ef10b16299c5bd3b00af9cb8b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Model *</type>
      <name>mod</name>
      <anchorfile>classStg_1_1ModelFiducial_1_1Fiducial.html</anchorfile>
      <anchor>a035ee8d81187932c47b9f98de169de20</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Pose</type>
      <name>pose</name>
      <anchorfile>classStg_1_1ModelFiducial_1_1Fiducial.html</anchorfile>
      <anchor>a0747635d057c5e53155f5702022e72d3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>range</name>
      <anchorfile>classStg_1_1ModelFiducial_1_1Fiducial.html</anchorfile>
      <anchor>a4f320c7af9972dcc7f22c6438694ba48</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::ModelGripper</name>
    <filename>classStg_1_1ModelGripper.html</filename>
    <base>Stg::Model</base>
    <class kind="struct">Stg::ModelGripper::config_t</class>
    <member kind="enumeration">
      <name>cmd_t</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>afa9503663aff67ba8c2df1162e235d78</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_NOOP</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>afa9503663aff67ba8c2df1162e235d78a68301cd39b65a66c6cfa0506e9b861d2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_OPEN</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>afa9503663aff67ba8c2df1162e235d78a95560ef9c4e76a6805261dbfd7916577</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_CLOSE</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>afa9503663aff67ba8c2df1162e235d78af8e2fb91f976d68b4c52bab6391a376e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_UP</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>afa9503663aff67ba8c2df1162e235d78a6b5317ebfa69b8df80e50cb30d53dd9e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_DOWN</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>afa9503663aff67ba8c2df1162e235d78a00a563fc2f922ab2765a5d28ccffaaa2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>lift_state_t</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>ae772ebbebc4744b513f2cb66080d806a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LIFT_DOWN</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>ae772ebbebc4744b513f2cb66080d806aa49a6e60f40cafc574fc028ad0bdbfecc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LIFT_UP</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>ae772ebbebc4744b513f2cb66080d806aa57ac5fa96f02b86b12143ffbbf1a41d4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LIFT_UPPING</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>ae772ebbebc4744b513f2cb66080d806aa660188350d992275063cc9781ba11eff</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LIFT_DOWNING</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>ae772ebbebc4744b513f2cb66080d806aad73e1cbb8cda89e410b77c409ff6bb50</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>paddle_state_t</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>ab29efe91e9af0f174ebc65857dfa5089</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PADDLE_OPEN</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>ab29efe91e9af0f174ebc65857dfa5089a85bddc81e82c9464f986b79c9836ff3e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PADDLE_CLOSED</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>ab29efe91e9af0f174ebc65857dfa5089ae8a463e54f2f350808fbbedf084cabbf</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PADDLE_OPENING</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>ab29efe91e9af0f174ebc65857dfa5089ab2d8dc33cdc0c3851836c1414d988a65</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PADDLE_CLOSING</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>ab29efe91e9af0f174ebc65857dfa5089a0a0d5d3f1af4f236ee4045e7ab9281dd</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>CommandClose</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>a0af9633b7d4611aaf9a1358eced130b0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>CommandDown</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>a6f75e8f15529a4fd991ffcaf05314ffa</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>CommandOpen</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>ac247c259d2a4db6a3381ad3e51d689e9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>CommandUp</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>af88c60f739a9e35d3190c8dc0808857b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>config_t</type>
      <name>GetConfig</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>a81261df29a0d274398df0bacac8eddbd</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>a7ff46599d9d78754d5cd68925c6fc967</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ModelGripper</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>a7e0788c84267e34a3a46380884c6f3a8</anchor>
      <arglist>(World *world, Model *parent, const std::string &amp;type)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Save</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>a2d5d480dedd4d3a7f46ec4afecb4d339</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetCommand</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>abbb3afd484bf38df14abda974c243005</anchor>
      <arglist>(cmd_t cmd)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetConfig</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>afb976f09c37b4af4b0874482c4e036e5</anchor>
      <arglist>(config_t &amp;newcfg)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~ModelGripper</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>aec6ef7d5ddf13a6eb2ab362159fd27a9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const Size</type>
      <name>size</name>
      <anchorfile>classStg_1_1ModelGripper.html</anchorfile>
      <anchor>a2af9bfd6e9f17c0b37def855c8f15852</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Stg::ModelGripper::config_t</name>
    <filename>structStg_1_1ModelGripper_1_1config__t.html</filename>
    <member kind="variable">
      <type>bool</type>
      <name>autosnatch</name>
      <anchorfile>structStg_1_1ModelGripper_1_1config__t.html</anchorfile>
      <anchor>ae96a749c3924ea9c50bfc516be0fa606</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Model *</type>
      <name>beam</name>
      <anchorfile>structStg_1_1ModelGripper_1_1config__t.html</anchorfile>
      <anchor>a26c0dd2a7773e5358b145163c865602c</anchor>
      <arglist>[2]</arglist>
    </member>
    <member kind="variable">
      <type>double</type>
      <name>break_beam_inset</name>
      <anchorfile>structStg_1_1ModelGripper_1_1config__t.html</anchorfile>
      <anchor>aa52977591557a6eaa6fad79de9da7aa9</anchor>
      <arglist>[2]</arglist>
    </member>
    <member kind="variable">
      <type>double</type>
      <name>close_limit</name>
      <anchorfile>structStg_1_1ModelGripper_1_1config__t.html</anchorfile>
      <anchor>a36a6c3b3067aba98b1f17fc126ac7cd7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Model *</type>
      <name>contact</name>
      <anchorfile>structStg_1_1ModelGripper_1_1config__t.html</anchorfile>
      <anchor>a4eebb8abfa0fbdca64285c5eb9749679</anchor>
      <arglist>[2]</arglist>
    </member>
    <member kind="variable">
      <type>Model *</type>
      <name>gripped</name>
      <anchorfile>structStg_1_1ModelGripper_1_1config__t.html</anchorfile>
      <anchor>a63640a260e8c96391850400dd4a601d5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>lift_state_t</type>
      <name>lift</name>
      <anchorfile>structStg_1_1ModelGripper_1_1config__t.html</anchorfile>
      <anchor>a086e27530bde366ee9de9cfff1a60c03</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>double</type>
      <name>lift_position</name>
      <anchorfile>structStg_1_1ModelGripper_1_1config__t.html</anchorfile>
      <anchor>aa2b4ec1027db7586e6ffe166f98120ef</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>double</type>
      <name>paddle_position</name>
      <anchorfile>structStg_1_1ModelGripper_1_1config__t.html</anchorfile>
      <anchor>a693745e651dd13609bd74b3d02c124c4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Size</type>
      <name>paddle_size</name>
      <anchorfile>structStg_1_1ModelGripper_1_1config__t.html</anchorfile>
      <anchor>a4daa1ab4fb90c7ee630c4b38a13f67c5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>paddle_state_t</type>
      <name>paddles</name>
      <anchorfile>structStg_1_1ModelGripper_1_1config__t.html</anchorfile>
      <anchor>a2fbfc4afc2516be65c9f78dd142d1ad9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>paddles_stalled</name>
      <anchorfile>structStg_1_1ModelGripper_1_1config__t.html</anchorfile>
      <anchor>aa2558983e327ba4fbccbf22462ed2ddd</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::ModelLaser</name>
    <filename>classStg_1_1ModelLaser.html</filename>
    <base>Stg::Model</base>
    <class kind="class">Stg::ModelLaser::Config</class>
    <class kind="class">Stg::ModelLaser::Sample</class>
    <class kind="class">Stg::ModelLaser::Vis</class>
    <member kind="function">
      <type>Config</type>
      <name>GetConfig</name>
      <anchorfile>classStg_1_1ModelLaser.html</anchorfile>
      <anchor>a61f5cfa8452c9b2cec56171a9c311504</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const std::vector&lt; Sample &gt; &amp;</type>
      <name>GetSamples</name>
      <anchorfile>classStg_1_1ModelLaser.html</anchorfile>
      <anchor>aaa0f5525a6e878ad71d6c1ace37e08ac</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Sample *</type>
      <name>GetSamples</name>
      <anchorfile>classStg_1_1ModelLaser.html</anchorfile>
      <anchor>a7b71cd52fbe09ede9276b9cfcefb9b88</anchor>
      <arglist>(uint32_t *count)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1ModelLaser.html</anchorfile>
      <anchor>aea2019b035217a054d6d4f9dabecf617</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ModelLaser</name>
      <anchorfile>classStg_1_1ModelLaser.html</anchorfile>
      <anchor>aa9071cc83679975945de71b42585debf</anchor>
      <arglist>(World *world, Model *parent, const std::string &amp;type)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Print</name>
      <anchorfile>classStg_1_1ModelLaser.html</anchorfile>
      <anchor>abe6b7657455975563220d7b224d087a2</anchor>
      <arglist>(char *prefix)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetConfig</name>
      <anchorfile>classStg_1_1ModelLaser.html</anchorfile>
      <anchor>ac95e6f7f7243325a0803bcfd0acbfb04</anchor>
      <arglist>(Config &amp;cfg)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Shutdown</name>
      <anchorfile>classStg_1_1ModelLaser.html</anchorfile>
      <anchor>af819a630ebc886ddaba88583a45794e7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Startup</name>
      <anchorfile>classStg_1_1ModelLaser.html</anchorfile>
      <anchor>acfd879cfa33bdfb0c1442118a7987f44</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Update</name>
      <anchorfile>classStg_1_1ModelLaser.html</anchorfile>
      <anchor>af37b77e8380b47d97b7c791f258d60fc</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~ModelLaser</name>
      <anchorfile>classStg_1_1ModelLaser.html</anchorfile>
      <anchor>a9403ef2f2248dc0aa4199ec7cafce929</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::ModelLaser::Config</name>
    <filename>classStg_1_1ModelLaser_1_1Config.html</filename>
    <member kind="variable">
      <type>stg_radians_t</type>
      <name>fov</name>
      <anchorfile>classStg_1_1ModelLaser_1_1Config.html</anchorfile>
      <anchor>a8438abb37d2d171f9facf5b66e7f8d63</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_usec_t</type>
      <name>interval</name>
      <anchorfile>classStg_1_1ModelLaser_1_1Config.html</anchorfile>
      <anchor>a0ea3c0f2611bc8bf879006afcda78705</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Bounds</type>
      <name>range_bounds</name>
      <anchorfile>classStg_1_1ModelLaser_1_1Config.html</anchorfile>
      <anchor>a2b1902e6711658d393cd2f98d7e75080</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>resolution</name>
      <anchorfile>classStg_1_1ModelLaser_1_1Config.html</anchorfile>
      <anchor>a7eef914d41162622eee5cc65c120514a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>sample_count</name>
      <anchorfile>classStg_1_1ModelLaser_1_1Config.html</anchorfile>
      <anchor>a77dbaeb3cfbbd087357830cf2951ecf8</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::ModelLaser::Sample</name>
    <filename>classStg_1_1ModelLaser_1_1Sample.html</filename>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>range</name>
      <anchorfile>classStg_1_1ModelLaser_1_1Sample.html</anchorfile>
      <anchor>ab983c930ff54a4cb5862c1a6d9c68d46</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>double</type>
      <name>reflectance</name>
      <anchorfile>classStg_1_1ModelLaser_1_1Sample.html</anchorfile>
      <anchor>aae6de58a07efc611e4ab3b1861e2ad72</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::ModelLightIndicator</name>
    <filename>classStg_1_1ModelLightIndicator.html</filename>
    <base>Stg::Model</base>
    <member kind="function">
      <type></type>
      <name>ModelLightIndicator</name>
      <anchorfile>classStg_1_1ModelLightIndicator.html</anchorfile>
      <anchor>acff12b215f916655e22865b02c7e6d88</anchor>
      <arglist>(World *world, Model *parent, const std::string &amp;type)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetState</name>
      <anchorfile>classStg_1_1ModelLightIndicator.html</anchorfile>
      <anchor>a7e80b4c979df0fde5268573f6a3d1afc</anchor>
      <arglist>(bool isOn)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~ModelLightIndicator</name>
      <anchorfile>classStg_1_1ModelLightIndicator.html</anchorfile>
      <anchor>af13e9e35af0e9d9bf78a4feb24fdc51c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>DrawBlocks</name>
      <anchorfile>classStg_1_1ModelLightIndicator.html</anchorfile>
      <anchor>ad7421d27126238db9676fa7de350bd85</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::ModelPosition</name>
    <filename>classStg_1_1ModelPosition.html</filename>
    <base>Stg::Model</base>
    <class kind="class">Stg::ModelPosition::PoseVis</class>
    <class kind="class">Stg::ModelPosition::Waypoint</class>
    <class kind="class">Stg::ModelPosition::WaypointVis</class>
    <member kind="enumeration">
      <name>ControlMode</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>ab250a1bd86d46437ab457b5296144f10</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CONTROL_VELOCITY</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>ab250a1bd86d46437ab457b5296144f10a134458db14c56bec62de30d11881aa4a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CONTROL_POSITION</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>ab250a1bd86d46437ab457b5296144f10aa9f0b7bf7489f91ff1185f63df0412be</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>DriveMode</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>a1508ed4ee8a3873c7e3e8c17ca0e5544</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>DRIVE_DIFFERENTIAL</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>a1508ed4ee8a3873c7e3e8c17ca0e5544ab92329358e955e25af81cd8b75bfee73</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>DRIVE_OMNI</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>a1508ed4ee8a3873c7e3e8c17ca0e5544a6401228f28b74dfacc54370d80837ee8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>DRIVE_CAR</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>a1508ed4ee8a3873c7e3e8c17ca0e5544ad24c06eafd49a66afb28d119a1a9a06d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>LocalizationMode</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>a5bfd55e33026ba40988f89c466a96892</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LOCALIZATION_GPS</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>a5bfd55e33026ba40988f89c466a96892aa5a8c50999c18fb6a849c1a56c25bd59</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LOCALIZATION_ODOM</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>a5bfd55e33026ba40988f89c466a96892abead37ff6227064e447e0d26731d2a08</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>GoTo</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>a08d45397b25cfdab541ebd58b8bb04b0</anchor>
      <arglist>(Pose pose)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>GoTo</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>a8332259cf6876e4c9da210252389d5ce</anchor>
      <arglist>(double x, double y, double a)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>aa9e299b6fea8a44f531ac3b66b258ad5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ModelPosition</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>aea073a0e5e765520ddc130456bcd3d22</anchor>
      <arglist>(World *world, Model *parent, const std::string &amp;type)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetOdom</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>abf3086b11231ea768bcc89c03ceffc1c</anchor>
      <arglist>(Pose odom)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetSpeed</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>a2e184dc4f3a22d83f5d9d07058a78201</anchor>
      <arglist>(Velocity vel)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetSpeed</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>abe947a5cd5e8289379dd8e4310a19724</anchor>
      <arglist>(double x, double y, double a)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetTurnSpeed</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>adea1cdc1bd6146012c690db81975bbf2</anchor>
      <arglist>(double a)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetXSpeed</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>af052869a337875dd7c37a223745cb699</anchor>
      <arglist>(double x)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetYSpeed</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>a2ef77fdcae61475dfe3813c46ea1c7e0</anchor>
      <arglist>(double y)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetZSpeed</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>a2a7b691e7606543430989ad0ab653b5f</anchor>
      <arglist>(double z)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Shutdown</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>a2ae5ef29d07144b944bc261126f4e523</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Startup</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>a7ea607d33d4d5f41b2ff78e544d59b52</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Stop</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>a240751ffc8cbaf3b9e5d21583b4a2f23</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Update</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>a5cb7087c256fe56f59e265a6ca647dad</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~ModelPosition</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>a0edeac557e561c8d4cc3ada00c3fc67d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>Pose</type>
      <name>est_origin</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>a8445186a84944cabec6a90152474e4d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Pose</type>
      <name>est_pose</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>ace4a5ff0ef9425298ce9fd4c57d8ba8a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Pose</type>
      <name>est_pose_error</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>afe4766e7bd8f60eea682cb360f624bb4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Stg::ModelPosition::PoseVis</type>
      <name>posevis</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>abc0b1457c85f8f2b497f9af5adc4809a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; Waypoint &gt;</type>
      <name>waypoints</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>a3a4450806e3239e2a375e12d89745b16</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Stg::ModelPosition::WaypointVis</type>
      <name>wpvis</name>
      <anchorfile>classStg_1_1ModelPosition.html</anchorfile>
      <anchor>a4e5f2ef0be5d6608ed447d96cdfe5573</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::ModelPosition::PoseVis</name>
    <filename>classStg_1_1ModelPosition_1_1PoseVis.html</filename>
    <base>Stg::Visualizer</base>
    <member kind="function">
      <type></type>
      <name>PoseVis</name>
      <anchorfile>classStg_1_1ModelPosition_1_1PoseVis.html</anchorfile>
      <anchor>a864935eb0d46b81134cc56618171f7be</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Visualize</name>
      <anchorfile>classStg_1_1ModelPosition_1_1PoseVis.html</anchorfile>
      <anchor>aac06b48b41713681825dab0783b80e74</anchor>
      <arglist>(Model *mod, Camera *cam)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~PoseVis</name>
      <anchorfile>classStg_1_1ModelPosition_1_1PoseVis.html</anchorfile>
      <anchor>a1050d76f99831ff75bd57184c0323ccf</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::ModelPosition::Waypoint</name>
    <filename>classStg_1_1ModelPosition_1_1Waypoint.html</filename>
    <member kind="function">
      <type>void</type>
      <name>Draw</name>
      <anchorfile>classStg_1_1ModelPosition_1_1Waypoint.html</anchorfile>
      <anchor>a09446adc6c872200cae43a892a01f23b</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Waypoint</name>
      <anchorfile>classStg_1_1ModelPosition_1_1Waypoint.html</anchorfile>
      <anchor>abc06f85adc233ab99ab27ad9fabaa2a4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Waypoint</name>
      <anchorfile>classStg_1_1ModelPosition_1_1Waypoint.html</anchorfile>
      <anchor>a04c26d04750f3ec31534614c839ea84a</anchor>
      <arglist>(const Pose &amp;pose, Color color)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Waypoint</name>
      <anchorfile>classStg_1_1ModelPosition_1_1Waypoint.html</anchorfile>
      <anchor>a71def055b62569e4c4c9ad4fa3348b58</anchor>
      <arglist>(stg_meters_t x, stg_meters_t y, stg_meters_t z, stg_radians_t a, Color color)</arglist>
    </member>
    <member kind="variable">
      <type>Color</type>
      <name>color</name>
      <anchorfile>classStg_1_1ModelPosition_1_1Waypoint.html</anchorfile>
      <anchor>a76cf4c13faf3907ecb04872840ae3827</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Pose</type>
      <name>pose</name>
      <anchorfile>classStg_1_1ModelPosition_1_1Waypoint.html</anchorfile>
      <anchor>afba4a76b0220299c5a271cbe8fdbb865</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::ModelPosition::WaypointVis</name>
    <filename>classStg_1_1ModelPosition_1_1WaypointVis.html</filename>
    <base>Stg::Visualizer</base>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Visualize</name>
      <anchorfile>classStg_1_1ModelPosition_1_1WaypointVis.html</anchorfile>
      <anchor>ad1c4bc80948f72a7125420d67e1d9a39</anchor>
      <arglist>(Model *mod, Camera *cam)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>WaypointVis</name>
      <anchorfile>classStg_1_1ModelPosition_1_1WaypointVis.html</anchorfile>
      <anchor>a8c35edf7c127cf17d5b7db253f8f9e15</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~WaypointVis</name>
      <anchorfile>classStg_1_1ModelPosition_1_1WaypointVis.html</anchorfile>
      <anchor>aac3b33c720819bc0ab5609a5d0bf3850</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::ModelRanger</name>
    <filename>classStg_1_1ModelRanger.html</filename>
    <base>Stg::Model</base>
    <class kind="class">Stg::ModelRanger::Sensor</class>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1ModelRanger.html</anchorfile>
      <anchor>a4eb90e0411aad3a7262a5526e1f0b5dd</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ModelRanger</name>
      <anchorfile>classStg_1_1ModelRanger.html</anchorfile>
      <anchor>a2d5911d8da99e3806db92ab410f97891</anchor>
      <arglist>(World *world, Model *parent, const std::string &amp;type)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Print</name>
      <anchorfile>classStg_1_1ModelRanger.html</anchorfile>
      <anchor>a240506f362462586ebf5cb634da35315</anchor>
      <arglist>(char *prefix)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~ModelRanger</name>
      <anchorfile>classStg_1_1ModelRanger.html</anchorfile>
      <anchor>abd037ed8371d56f843e1fa86b0df32ab</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; Sensor &gt;</type>
      <name>sensors</name>
      <anchorfile>classStg_1_1ModelRanger.html</anchorfile>
      <anchor>a3b164b09ebb4058d5c7a6bc8eb7b0c0a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>DataVisualize</name>
      <anchorfile>classStg_1_1ModelRanger.html</anchorfile>
      <anchor>a47aaae06f88461db735e8c795f3877b3</anchor>
      <arglist>(Camera *cam)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>Shutdown</name>
      <anchorfile>classStg_1_1ModelRanger.html</anchorfile>
      <anchor>a65f6e53fb23567c01a0225d2116122d2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>Startup</name>
      <anchorfile>classStg_1_1ModelRanger.html</anchorfile>
      <anchor>abbb44753624c9cb079932f340cd774d8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>Update</name>
      <anchorfile>classStg_1_1ModelRanger.html</anchorfile>
      <anchor>a31236d2cda1c059f642c32fb3d75151a</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::ModelRanger::Sensor</name>
    <filename>classStg_1_1ModelRanger_1_1Sensor.html</filename>
    <member kind="variable">
      <type>Bounds</type>
      <name>bounds_range</name>
      <anchorfile>classStg_1_1ModelRanger_1_1Sensor.html</anchorfile>
      <anchor>aaf2d501e963e9bfd8a3dd5328e03f4eb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_radians_t</type>
      <name>fov</name>
      <anchorfile>classStg_1_1ModelRanger_1_1Sensor.html</anchorfile>
      <anchor>a2294cec31fdc5a814b1080017c91fb2d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Pose</type>
      <name>pose</name>
      <anchorfile>classStg_1_1ModelRanger_1_1Sensor.html</anchorfile>
      <anchor>ae6a67e21690e1bff3f92bb29cf752239</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>range</name>
      <anchorfile>classStg_1_1ModelRanger_1_1Sensor.html</anchorfile>
      <anchor>a22101618ee3844f878425d0c914236b6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>ray_count</name>
      <anchorfile>classStg_1_1ModelRanger_1_1Sensor.html</anchorfile>
      <anchor>a82ea9586a588595ca8c5046239884634</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Size</type>
      <name>size</name>
      <anchorfile>classStg_1_1ModelRanger_1_1Sensor.html</anchorfile>
      <anchor>ad8e25116840c49ad47ce03ee13140a86</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Option</name>
    <filename>classStg_1_1Option.html</filename>
    <member kind="function">
      <type>void</type>
      <name>createMenuItem</name>
      <anchorfile>classStg_1_1Option.html</anchorfile>
      <anchor>ab44fe741d37c3cf99bd7dbb4ee204ddb</anchor>
      <arglist>(Fl_Menu_Bar *menu, std::string path)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>invert</name>
      <anchorfile>classStg_1_1Option.html</anchorfile>
      <anchor>a0293b260b0de9fd475693ec742643721</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isEnabled</name>
      <anchorfile>classStg_1_1Option.html</anchorfile>
      <anchor>ad2a63101752c62bccf99b2e438b18c1c</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1Option.html</anchorfile>
      <anchor>a9460b7d76b37ac37e2868579e47c509d</anchor>
      <arglist>(Worldfile *wf, int section)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>menuCallback</name>
      <anchorfile>classStg_1_1Option.html</anchorfile>
      <anchor>a3c6183bbd337b639be8e66db9591072f</anchor>
      <arglist>(Fl_Callback *cb, Fl_Widget *w)</arglist>
    </member>
    <member kind="function">
      <type>const std::string</type>
      <name>name</name>
      <anchorfile>classStg_1_1Option.html</anchorfile>
      <anchor>a2cd6c2005675caeab3161d76a606e2f9</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>operator bool</name>
      <anchorfile>classStg_1_1Option.html</anchorfile>
      <anchor>a9282be16a51c5e29e0021ed7442cc134</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator&lt;</name>
      <anchorfile>classStg_1_1Option.html</anchorfile>
      <anchor>a8a46fe1d9229e1bf62ba2eba9a1b08ed</anchor>
      <arglist>(const Option &amp;rhs) const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Option</name>
      <anchorfile>classStg_1_1Option.html</anchorfile>
      <anchor>ab7e091811f6f1ab4022e2e9dea2c974e</anchor>
      <arglist>(std::string n, std::string tok, std::string key, bool v, World *world)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Save</name>
      <anchorfile>classStg_1_1Option.html</anchorfile>
      <anchor>a78722befb40d1e5e71e31766f05293fe</anchor>
      <arglist>(Worldfile *wf, int section)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set</name>
      <anchorfile>classStg_1_1Option.html</anchorfile>
      <anchor>a0616fb443ac4329a55d4f99e1cb2390c</anchor>
      <arglist>(bool val)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>val</name>
      <anchorfile>classStg_1_1Option.html</anchorfile>
      <anchor>ace41324a87e64d84d228028bedde1a2a</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>toggleCb</name>
      <anchorfile>classStg_1_1Option.html</anchorfile>
      <anchor>a198ebbf859657af7b6791c412a084ea8</anchor>
      <arglist>(Fl_Widget *w, void *p)</arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>htname</name>
      <anchorfile>classStg_1_1Option.html</anchorfile>
      <anchor>aa243ff306bdc196293635bfe36533bc9</anchor>
      <arglist></arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend bool</type>
      <name>compare</name>
      <anchorfile>classStg_1_1Option.html</anchorfile>
      <anchor>ab4b3f66b30028cdeabf9a7f8e9a02060</anchor>
      <arglist>(const Option *lhs, const Option *rhs)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::OptionsDlg</name>
    <filename>classStg_1_1OptionsDlg.html</filename>
    <member kind="enumeration">
      <name>event_t</name>
      <anchorfile>classStg_1_1OptionsDlg.html</anchorfile>
      <anchor>ab4dd5cd5c8a88658016a7d9083bcd7d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NO_EVENT</name>
      <anchorfile>classStg_1_1OptionsDlg.html</anchorfile>
      <anchor>ab4dd5cd5c8a88658016a7d9083bcd7d0ae31fbf9ba80c2242946b9caea1d710c2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CHANGE</name>
      <anchorfile>classStg_1_1OptionsDlg.html</anchorfile>
      <anchor>ab4dd5cd5c8a88658016a7d9083bcd7d0a899c3670a7bb1b45920f9f97e95080e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CHANGE_ALL</name>
      <anchorfile>classStg_1_1OptionsDlg.html</anchorfile>
      <anchor>ab4dd5cd5c8a88658016a7d9083bcd7d0ac1020b03dc8747da3e2e51ea8986f0ae</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CLOSE</name>
      <anchorfile>classStg_1_1OptionsDlg.html</anchorfile>
      <anchor>ab4dd5cd5c8a88658016a7d9083bcd7d0aa74ac5ba2b36bc91343c0eafbbe3acf8</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Option *</type>
      <name>changed</name>
      <anchorfile>classStg_1_1OptionsDlg.html</anchorfile>
      <anchor>a3fc38c3b94825fd2fca3fa6aec1a99bc</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clearOptions</name>
      <anchorfile>classStg_1_1OptionsDlg.html</anchorfile>
      <anchor>a297d211f7e865e987d764cc4c9f3703a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const event_t</type>
      <name>event</name>
      <anchorfile>classStg_1_1OptionsDlg.html</anchorfile>
      <anchor>a450417afe3615c8b0780b64985331851</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>OptionsDlg</name>
      <anchorfile>classStg_1_1OptionsDlg.html</anchorfile>
      <anchor>af678772c219c8ad87e6975d8a0e843e0</anchor>
      <arglist>(int x, int y, int w, int h)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOptions</name>
      <anchorfile>classStg_1_1OptionsDlg.html</anchorfile>
      <anchor>ae2a2ebb8767c24498dd7b9b700a67dee</anchor>
      <arglist>(const std::set&lt; Option * &gt; &amp;opts)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>showAllOpt</name>
      <anchorfile>classStg_1_1OptionsDlg.html</anchorfile>
      <anchor>ac765c8e3aa8466d2b21acb5c663b7830</anchor>
      <arglist>(Option *opt)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~OptionsDlg</name>
      <anchorfile>classStg_1_1OptionsDlg.html</anchorfile>
      <anchor>a477c1745fcc7e7fc8a415fd3c6429147</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::OrthoCamera</name>
    <filename>classStg_1_1OrthoCamera.html</filename>
    <base>Stg::Camera</base>
    <member kind="function">
      <type>void</type>
      <name>addPitch</name>
      <anchorfile>classStg_1_1OrthoCamera.html</anchorfile>
      <anchor>a57bd6505e45d6d70c8ea04416fa2cdba</anchor>
      <arglist>(float pitch)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addYaw</name>
      <anchorfile>classStg_1_1OrthoCamera.html</anchorfile>
      <anchor>a51189fc319278d2f07d2a500275971d1</anchor>
      <arglist>(float yaw)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Draw</name>
      <anchorfile>classStg_1_1OrthoCamera.html</anchorfile>
      <anchor>a6d155efd0a12c1a36ab63633a5808f94</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1OrthoCamera.html</anchorfile>
      <anchor>a6421712e52f64a3df4400d57fd387d85</anchor>
      <arglist>(Worldfile *wf, int sec)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>move</name>
      <anchorfile>classStg_1_1OrthoCamera.html</anchorfile>
      <anchor>ac90c63eee4fded6b7da26d839115a407</anchor>
      <arglist>(float x, float y)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>OrthoCamera</name>
      <anchorfile>classStg_1_1OrthoCamera.html</anchorfile>
      <anchor>af2620f2aafe322ce37fc9b5be15f2a09</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reset</name>
      <anchorfile>classStg_1_1OrthoCamera.html</anchorfile>
      <anchor>a4aaa00b8ec97e700dc04c2386114fff8</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Save</name>
      <anchorfile>classStg_1_1OrthoCamera.html</anchorfile>
      <anchor>ae48be21ec23c232f59184e9890d0b249</anchor>
      <arglist>(Worldfile *wf, int sec)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>scale</name>
      <anchorfile>classStg_1_1OrthoCamera.html</anchorfile>
      <anchor>afff95b93e59ec358d9e4067ab7caed5d</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>scale</name>
      <anchorfile>classStg_1_1OrthoCamera.html</anchorfile>
      <anchor>a6a9b29c017b1107ffc05f4a100946f04</anchor>
      <arglist>(float scale, float shift_x=0, float h=0, float shift_y=0, float w=0)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setPitch</name>
      <anchorfile>classStg_1_1OrthoCamera.html</anchorfile>
      <anchor>ad0699e5adb4bc14cb8de0cc110e97dcf</anchor>
      <arglist>(float pitch)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setPose</name>
      <anchorfile>classStg_1_1OrthoCamera.html</anchorfile>
      <anchor>a11af0ed8bc69f9a5544f0882c3112705</anchor>
      <arglist>(float x, float y)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>SetProjection</name>
      <anchorfile>classStg_1_1OrthoCamera.html</anchorfile>
      <anchor>abc49f3b99cd5dce3cbc5d298f9e82d7b</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>SetProjection</name>
      <anchorfile>classStg_1_1OrthoCamera.html</anchorfile>
      <anchor>ad5c4ef5d59aee4e5b3f9f12fcff37d86</anchor>
      <arglist>(float pixels_width, float pixels_height, float y_min, float y_max)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setScale</name>
      <anchorfile>classStg_1_1OrthoCamera.html</anchorfile>
      <anchor>a04b1bd294898941ffecbe91dfe2c9a71</anchor>
      <arglist>(float scale)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setYaw</name>
      <anchorfile>classStg_1_1OrthoCamera.html</anchorfile>
      <anchor>a938a3062382533b5ca9d877f9c7a1e91</anchor>
      <arglist>(float yaw)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::PerspectiveCamera</name>
    <filename>classStg_1_1PerspectiveCamera.html</filename>
    <base>Stg::Camera</base>
    <member kind="function">
      <type>void</type>
      <name>addPitch</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>a2de1763b6b04dbb7e00ec895208a4d7f</anchor>
      <arglist>(float pitch)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addPose</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>a78af97a782aabbfef9f6f75c1e69eaa9</anchor>
      <arglist>(float x, float y, float z)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addYaw</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>a67b17332d326b1a6196bca6996d5c7d4</anchor>
      <arglist>(float yaw)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Draw</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>a7299fc987701f46c79b90ed26bc7a55d</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>farClip</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>aa6c06b4adea6713f9d5ec147bf830655</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>forward</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>ad5a2bccaafed2a81760ad8e15177c211</anchor>
      <arglist>(float amount)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>horizFov</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>a0a0eff2d9f91d377236f8aa4dfcf69bc</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>abb798a0097812697bac5c00e5f1660a4</anchor>
      <arglist>(Worldfile *wf, int sec)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>move</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>ab1f2c7b058482aa3ac61825d50152f13</anchor>
      <arglist>(float x, float y, float z)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>nearClip</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>acf1ff031847af2c37236fcb925769485</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PerspectiveCamera</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>a870853229155cae6ff84bbe7f4e9548f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>realDistance</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>af0d33b55f7b332aa0210069869a9ef58</anchor>
      <arglist>(float z_buf_val) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reset</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>ad11c22e7e93d360a53e5ab08b5c8d497</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Save</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>ad697a899c518fb58ef3eefd50709e3a1</anchor>
      <arglist>(Worldfile *wf, int sec)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>scroll</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>a4997c102ef57ca799b372f4245bb46ba</anchor>
      <arglist>(float dy)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAspect</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>a6cd54cb6c736d2d76c30cf56c62bb755</anchor>
      <arglist>(float aspect)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setClip</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>a59a82553a9283afe2e12ff5d181f874f</anchor>
      <arglist>(float near, float far)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFov</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>aee8d6e3fb070f6780fd896b9fad0fecc</anchor>
      <arglist>(float horiz_fov, float vert_fov)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setPitch</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>a199e424b29982dba90402802d4e6bfe8</anchor>
      <arglist>(float pitch)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setPose</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>a0d2e4067fdd1a90790cf1ab6786f445e</anchor>
      <arglist>(float x, float y, float z)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>SetProjection</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>a33b9aa9d4e1fbf66e0368c6e6176b94e</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setYaw</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>a50d231ac4dfa8915d4af8ffd4837026e</anchor>
      <arglist>(float yaw)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>strafe</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>a722df7ab7627f8f801c68eb6a823ea09</anchor>
      <arglist>(float amount)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>update</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>ae7cc497eb887cb3932e34fdee90f8441</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>vertFov</name>
      <anchorfile>classStg_1_1PerspectiveCamera.html</anchorfile>
      <anchor>abd8bd23ef08e3c3b3b70dec0355a4b4f</anchor>
      <arglist>(void) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Pose</name>
    <filename>classStg_1_1Pose.html</filename>
    <member kind="function">
      <type>bool</type>
      <name>IsZero</name>
      <anchorfile>classStg_1_1Pose.html</anchorfile>
      <anchor>aaa9aa82886e4fac4234461b16c7e2f19</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1Pose.html</anchorfile>
      <anchor>a415e2e9d701c0fc1c0a5c391e76e5758</anchor>
      <arglist>(Worldfile *wf, int section, const char *keyword)</arglist>
    </member>
    <member kind="function">
      <type>Pose</type>
      <name>operator+</name>
      <anchorfile>classStg_1_1Pose.html</anchorfile>
      <anchor>a95cb1708adc5e7ff02d1c6ae740012e6</anchor>
      <arglist>(const Pose &amp;p)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Pose</name>
      <anchorfile>classStg_1_1Pose.html</anchorfile>
      <anchor>ac29c3dd62956ae91e2a30bb0e25acf4f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Pose</name>
      <anchorfile>classStg_1_1Pose.html</anchorfile>
      <anchor>a343f4c91997b16f1eca32a92e1a8772f</anchor>
      <arglist>(stg_meters_t x, stg_meters_t y, stg_meters_t z, stg_radians_t a)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Print</name>
      <anchorfile>classStg_1_1Pose.html</anchorfile>
      <anchor>a2e3e9a9f5e3c002c3a416eae6be688b0</anchor>
      <arglist>(const char *prefix)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Save</name>
      <anchorfile>classStg_1_1Pose.html</anchorfile>
      <anchor>afba1952f84485ff3afdb6875146524f7</anchor>
      <arglist>(Worldfile *wf, int section, const char *keyword)</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>String</name>
      <anchorfile>classStg_1_1Pose.html</anchorfile>
      <anchor>af88d42c2286c2b4e4de99c8134425db8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Zero</name>
      <anchorfile>classStg_1_1Pose.html</anchorfile>
      <anchor>add756d85e19791bff97d3a856efe58cf</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~Pose</name>
      <anchorfile>classStg_1_1Pose.html</anchorfile>
      <anchor>a6fea6905d63e90bde969353bf7226783</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static Pose</type>
      <name>Random</name>
      <anchorfile>classStg_1_1Pose.html</anchorfile>
      <anchor>a5184724e9923611427447d3d89672aa1</anchor>
      <arglist>(stg_meters_t xmin, stg_meters_t xmax, stg_meters_t ymin, stg_meters_t ymax)</arglist>
    </member>
    <member kind="variable">
      <type>stg_radians_t</type>
      <name>a</name>
      <anchorfile>classStg_1_1Pose.html</anchorfile>
      <anchor>a83e06ac4110515e3651348785a40450a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>x</name>
      <anchorfile>classStg_1_1Pose.html</anchorfile>
      <anchor>a1a2295368b2fce3a39263ab1c834ca4b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>y</name>
      <anchorfile>classStg_1_1Pose.html</anchorfile>
      <anchor>ac7ca125ddcef4b7711f8fda600f08beb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>z</name>
      <anchorfile>classStg_1_1Pose.html</anchorfile>
      <anchor>a1239756a39c4d0af68712562934b8229</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::PowerPack</name>
    <filename>classStg_1_1PowerPack.html</filename>
    <class kind="class">Stg::PowerPack::DissipationVis</class>
    <member kind="function">
      <type>void</type>
      <name>Add</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>aa8c782c8c879761d376acf8fe41f4bc4</anchor>
      <arglist>(stg_joules_t j)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ChargeStart</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a430b3ebe8aee1ee48d6f5e04c9b7fe03</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ChargeStop</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a502d6029a41f103aa7bb2361e815034d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Dissipate</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>ae96c6a9533c146d6b6354c015de16062</anchor>
      <arglist>(stg_joules_t j, const Pose &amp;p)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Dissipate</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a9ec6fdd75ac16651123e115b197d98c8</anchor>
      <arglist>(stg_joules_t j)</arglist>
    </member>
    <member kind="function">
      <type>stg_joules_t</type>
      <name>GetCapacity</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a9315b1462c880515343c208f5922ae5f</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>GetCharging</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a4eebc3283bcb1135b6729a14258025c5</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>stg_joules_t</type>
      <name>GetDissipated</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a0f154fcc6bd21344fbd2e4a56e89adcb</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>stg_joules_t</type>
      <name>GetStored</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a926e774b5965d20d55c62e51322932f7</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PowerPack</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a415c7019aab106eb662c4eb00d9091b9</anchor>
      <arglist>(Model *mod)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Print</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>ace502514f0e4cf9fdad9c0b49479f8c3</anchor>
      <arglist>(const char *prefix) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Print</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a60e6f9d61f790367eb3c71d97928db7c</anchor>
      <arglist>(char *prefix) const </arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>ProportionRemaining</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a17ceed295d4a5b6267148b50f78efe58</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>stg_joules_t</type>
      <name>RemainingCapacity</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a655a48affd3094cd51e44166d71e2b03</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetCapacity</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a3c3766b009ccd6d84584e92261d37e3a</anchor>
      <arglist>(stg_joules_t j)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetStored</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>abcd8bf9c17464554bb8e12483f5e8237</anchor>
      <arglist>(stg_joules_t j)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Subtract</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a6561fa07b5de3a8de9e3c22f1b309ef4</anchor>
      <arglist>(stg_joules_t j)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>TransferTo</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a0dfe58a7b769918299b9b48daa24a1ea</anchor>
      <arglist>(PowerPack *dest, stg_joules_t amount)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Visualize</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>af6a1ed44f8cf2b7eb649d3a8e26d531c</anchor>
      <arglist>(Camera *cam)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~PowerPack</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>ad3d77494fe91c047215aa00eaf6097fb</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>stg_joules_t</type>
      <name>capacity</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>aa942fdf707c4098dbd2f459153377d3b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>charging</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>abf6c8183dc499160422aa1320c2949d4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>stg_joules_t</type>
      <name>dissipated</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a862967fbfdf44652b4351f8c65a7a206</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>Stg::PowerPack::DissipationVis</type>
      <name>event_vis</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>acca72c89bba55af0cd8c58ea9c915a5a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>stg_joules_t</type>
      <name>last_joules</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a87ddd2164f793d6c5a9285711e86f6c2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>stg_usec_t</type>
      <name>last_time</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a0378a998c3da3378b8b82834a78ebfaa</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>stg_watts_t</type>
      <name>last_watts</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>ac442bdfd333c0f389d18fc08190bc300</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>Model *</type>
      <name>mod</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a0c157858f7eb20e861fc3ecbd377d138</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>StripPlotVis</type>
      <name>output_vis</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a24212ca418541562f63d6229c8c39dbb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>stg_joules_t</type>
      <name>stored</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>abd0e06542d879522af51e09c23876fe2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>StripPlotVis</type>
      <name>stored_vis</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a98df838840f2f6eda939d54bfec0e026</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static stg_joules_t</type>
      <name>global_capacity</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a32ff75e25ec7f6ff2d31168536a97bf6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static stg_joules_t</type>
      <name>global_dissipated</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>aca57f191f1998f4ee3920ee15686bf02</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static stg_joules_t</type>
      <name>global_input</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>a29b2767006fd8f89fd210adab5450624</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static stg_joules_t</type>
      <name>global_stored</name>
      <anchorfile>classStg_1_1PowerPack.html</anchorfile>
      <anchor>ad682675adb174ca2098851ad6ac065c5</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::PowerPack::DissipationVis</name>
    <filename>classStg_1_1PowerPack_1_1DissipationVis.html</filename>
    <base>Stg::Visualizer</base>
    <member kind="function">
      <type>void</type>
      <name>Accumulate</name>
      <anchorfile>classStg_1_1PowerPack_1_1DissipationVis.html</anchorfile>
      <anchor>ab594a76cd488f767147b92454edfea61</anchor>
      <arglist>(stg_meters_t x, stg_meters_t y, stg_joules_t amount)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>DissipationVis</name>
      <anchorfile>classStg_1_1PowerPack_1_1DissipationVis.html</anchorfile>
      <anchor>a62e6b68c76cce34852cd496eedecfa9d</anchor>
      <arglist>(stg_meters_t width, stg_meters_t height, stg_meters_t cellsize)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Visualize</name>
      <anchorfile>classStg_1_1PowerPack_1_1DissipationVis.html</anchorfile>
      <anchor>a81862829ee90f4118d76fef6dfe7c6d0</anchor>
      <arglist>(Model *mod, Camera *cam)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~DissipationVis</name>
      <anchorfile>classStg_1_1PowerPack_1_1DissipationVis.html</anchorfile>
      <anchor>a6aa18699ea437b6e827ab1ca2bee41b9</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Ray</name>
    <filename>classStg_1_1Ray.html</filename>
    <member kind="function">
      <type></type>
      <name>Ray</name>
      <anchorfile>classStg_1_1Ray.html</anchorfile>
      <anchor>af2cf55c7cd75f2c1e91c07f396878a9a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Ray</name>
      <anchorfile>classStg_1_1Ray.html</anchorfile>
      <anchor>a0360e10b1ed14ca3c5846a9df8db1432</anchor>
      <arglist>(const Model *mod, const Pose &amp;origin, const stg_meters_t range, const stg_ray_test_func_t func, const void *arg, const bool ztest)</arglist>
    </member>
    <member kind="variable">
      <type>const void *</type>
      <name>arg</name>
      <anchorfile>classStg_1_1Ray.html</anchorfile>
      <anchor>ad11204acf363c533e36f63ede2dbc483</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_ray_test_func_t</type>
      <name>func</name>
      <anchorfile>classStg_1_1Ray.html</anchorfile>
      <anchor>afaabd222f7f9fa057f987fd517c83ec9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const Model *</type>
      <name>mod</name>
      <anchorfile>classStg_1_1Ray.html</anchorfile>
      <anchor>a407a26d18f42f4a4503903433b19c283</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Pose</type>
      <name>origin</name>
      <anchorfile>classStg_1_1Ray.html</anchorfile>
      <anchor>ab30faedbb6c0f86d104e44bf04a07226</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>range</name>
      <anchorfile>classStg_1_1Ray.html</anchorfile>
      <anchor>a7117c5a2418f0d48355fbdc3e20be3df</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>ztest</name>
      <anchorfile>classStg_1_1Ray.html</anchorfile>
      <anchor>a799f8c4190f8acf1a608794511b45d27</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::RaytraceResult</name>
    <filename>classStg_1_1RaytraceResult.html</filename>
    <member kind="function">
      <type></type>
      <name>RaytraceResult</name>
      <anchorfile>classStg_1_1RaytraceResult.html</anchorfile>
      <anchor>a8f3ae5c3c87503936a9106ee52f88686</anchor>
      <arglist>(const Pose &amp;pose, stg_meters_t range)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>RaytraceResult</name>
      <anchorfile>classStg_1_1RaytraceResult.html</anchorfile>
      <anchor>a098b7cd60f9f34572db68a2f50d784f0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>Color</type>
      <name>color</name>
      <anchorfile>classStg_1_1RaytraceResult.html</anchorfile>
      <anchor>a0fe1e89a768b8bff522ed9b8466e91d7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Model *</type>
      <name>mod</name>
      <anchorfile>classStg_1_1RaytraceResult.html</anchorfile>
      <anchor>a636a7ea20fd08877af42cdec8765db92</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Pose</type>
      <name>pose</name>
      <anchorfile>classStg_1_1RaytraceResult.html</anchorfile>
      <anchor>aa6b2366f39f3a629046164210fbddf86</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>range</name>
      <anchorfile>classStg_1_1RaytraceResult.html</anchorfile>
      <anchor>a8d4032f542962002332b7fd0a49941e8</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Region</name>
    <filename>classStg_1_1Region.html</filename>
    <member kind="function">
      <type>Cell *</type>
      <name>GetCell</name>
      <anchorfile>classStg_1_1Region.html</anchorfile>
      <anchor>a6b681a58796018df40bfbc1cb7faa8e3</anchor>
      <arglist>(int32_t x, int32_t y)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Region</name>
      <anchorfile>classStg_1_1Region.html</anchorfile>
      <anchor>ac580df54fd71f96d81d88db581b6b203</anchor>
      <arglist>(SuperRegion *sr)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Region</name>
      <anchorfile>classStg_1_1Region.html</anchorfile>
      <anchor>a3c3670fff78f7511d156e3b2f0bc6266</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; Cell &gt;</type>
      <name>cells</name>
      <anchorfile>classStg_1_1Region.html</anchorfile>
      <anchor>a26b402210877dcb3100f8db1f213cc13</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned long</type>
      <name>count</name>
      <anchorfile>classStg_1_1Region.html</anchorfile>
      <anchor>aad0aab0a6e32f768c96f303f8e0027e7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>SuperRegion *</type>
      <name>superregion</name>
      <anchorfile>classStg_1_1Region.html</anchorfile>
      <anchor>a6836844253880345e796f79a0653c022</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Size</name>
    <filename>classStg_1_1Size.html</filename>
    <member kind="function">
      <type>void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1Size.html</anchorfile>
      <anchor>aaac21f2a2f04659b93e3e7951d8d8703</anchor>
      <arglist>(Worldfile *wf, int section, const char *keyword)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Save</name>
      <anchorfile>classStg_1_1Size.html</anchorfile>
      <anchor>a6bd4fcf76672529e16ffcfd2d4faf39e</anchor>
      <arglist>(Worldfile *wf, int section, const char *keyword)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Size</name>
      <anchorfile>classStg_1_1Size.html</anchorfile>
      <anchor>a73c610106439b32b89782ddc11a73710</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Size</name>
      <anchorfile>classStg_1_1Size.html</anchorfile>
      <anchor>af24293c28070c21f2b29ae89ca5aa0c7</anchor>
      <arglist>(stg_meters_t x, stg_meters_t y, stg_meters_t z)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Zero</name>
      <anchorfile>classStg_1_1Size.html</anchorfile>
      <anchor>a8a3ee890f3ea1f4aff86d30bc0f61678</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>x</name>
      <anchorfile>classStg_1_1Size.html</anchorfile>
      <anchor>ad6ff77c0555b3ef2bdca565dd717163a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>y</name>
      <anchorfile>classStg_1_1Size.html</anchorfile>
      <anchor>a5f261b05a9bb52b8aa17ffa2f946ed85</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>z</name>
      <anchorfile>classStg_1_1Size.html</anchorfile>
      <anchor>a3b98898abd3819d5fb808d09fe5e0d2b</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Stg::stg_blinkenlight_t</name>
    <filename>structStg_1_1stg__blinkenlight__t.html</filename>
    <member kind="variable">
      <type>Color</type>
      <name>color</name>
      <anchorfile>structStg_1_1stg__blinkenlight__t.html</anchorfile>
      <anchor>af30eac02a432c7b6a745de8500455659</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>double</type>
      <name>duty_cycle</name>
      <anchorfile>structStg_1_1stg__blinkenlight__t.html</anchorfile>
      <anchor>a545126157b2cc3ed0bf98210fab95439</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>enabled</name>
      <anchorfile>structStg_1_1stg__blinkenlight__t.html</anchorfile>
      <anchor>a10f5d3bd05e9aec71b1ada54fdda0203</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_msec_t</type>
      <name>period</name>
      <anchorfile>structStg_1_1stg__blinkenlight__t.html</anchorfile>
      <anchor>a7a6a88bfc23549974aedf756c8679056</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Pose</type>
      <name>pose</name>
      <anchorfile>structStg_1_1stg__blinkenlight__t.html</anchorfile>
      <anchor>ab626088faddf7970f6b30f06e27724d4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>size</name>
      <anchorfile>structStg_1_1stg__blinkenlight__t.html</anchorfile>
      <anchor>a4382530821e9093fc0e3def4885b5f26</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::stg_bounds3d_t</name>
    <filename>classStg_1_1stg__bounds3d__t.html</filename>
    <member kind="function">
      <type></type>
      <name>stg_bounds3d_t</name>
      <anchorfile>classStg_1_1stg__bounds3d__t.html</anchorfile>
      <anchor>a98a034f162e475968aae0e4fc2391725</anchor>
      <arglist>(const Bounds &amp;x, const Bounds &amp;y, const Bounds &amp;z)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>stg_bounds3d_t</name>
      <anchorfile>classStg_1_1stg__bounds3d__t.html</anchorfile>
      <anchor>af56004d562854fb131d6ccea7d75413d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>Bounds</type>
      <name>x</name>
      <anchorfile>classStg_1_1stg__bounds3d__t.html</anchorfile>
      <anchor>a286a6da645723c95a5ab3ad0764a121e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Bounds</type>
      <name>y</name>
      <anchorfile>classStg_1_1stg__bounds3d__t.html</anchorfile>
      <anchor>a87c761e721e43d00bef1ac53bb19e98d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Bounds</type>
      <name>z</name>
      <anchorfile>classStg_1_1stg__bounds3d__t.html</anchorfile>
      <anchor>aafdea6c6de8754f67ca9f29c320c9eeb</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Stg::stg_fov_t</name>
    <filename>structStg_1_1stg__fov__t.html</filename>
    <member kind="variable">
      <type>stg_radians_t</type>
      <name>angle</name>
      <anchorfile>structStg_1_1stg__fov__t.html</anchorfile>
      <anchor>a37b95902ec5fa9a9fdcab2cf30a461ee</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Bounds</type>
      <name>range</name>
      <anchorfile>structStg_1_1stg__fov__t.html</anchorfile>
      <anchor>a6dd84e6aa98136f44922418fc17d83ae</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::stg_point3_t</name>
    <filename>classStg_1_1stg__point3__t.html</filename>
    <member kind="function">
      <type></type>
      <name>stg_point3_t</name>
      <anchorfile>classStg_1_1stg__point3__t.html</anchorfile>
      <anchor>a73eac0a3595031c3e8a6ca7f0b4f7aa4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>stg_point3_t</name>
      <anchorfile>classStg_1_1stg__point3__t.html</anchorfile>
      <anchor>a03c08191c9552f7cb237ef51cc8d127f</anchor>
      <arglist>(stg_meters_t x, stg_meters_t y, stg_meters_t z)</arglist>
    </member>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>x</name>
      <anchorfile>classStg_1_1stg__point3__t.html</anchorfile>
      <anchor>ad538214028f317c823442497890d655d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>y</name>
      <anchorfile>classStg_1_1stg__point3__t.html</anchorfile>
      <anchor>a61d19a4b95a5cbdeac7630af42eb0fb0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>z</name>
      <anchorfile>classStg_1_1stg__point3__t.html</anchorfile>
      <anchor>a0707ce97ce8412ab4a6c9f3d7cd8b503</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::stg_point_int_t</name>
    <filename>classStg_1_1stg__point__int__t.html</filename>
    <member kind="function">
      <type>bool</type>
      <name>operator&lt;</name>
      <anchorfile>classStg_1_1stg__point__int__t.html</anchorfile>
      <anchor>acdeb9a9e68604e5aee30898046c022b5</anchor>
      <arglist>(const stg_point_int_t &amp;other) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classStg_1_1stg__point__int__t.html</anchorfile>
      <anchor>a4a0f6c86e3e8937c4cf70d0dff424a17</anchor>
      <arglist>(const stg_point_int_t &amp;other) const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>stg_point_int_t</name>
      <anchorfile>classStg_1_1stg__point__int__t.html</anchorfile>
      <anchor>a3c7bcf343de50c45727e9ee1e1f243b0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>stg_point_int_t</name>
      <anchorfile>classStg_1_1stg__point__int__t.html</anchorfile>
      <anchor>a41dad7b3a9eca508b71ef991d1280437</anchor>
      <arglist>(int x, int y)</arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>x</name>
      <anchorfile>classStg_1_1stg__point__int__t.html</anchorfile>
      <anchor>a9c673d4b49fef666d7fef4a2f170bba3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>y</name>
      <anchorfile>classStg_1_1stg__point__int__t.html</anchorfile>
      <anchor>a30b4e6ab96cdffce43941538e3fb9116</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::stg_point_t</name>
    <filename>classStg_1_1stg__point__t.html</filename>
    <member kind="function">
      <type>bool</type>
      <name>operator+=</name>
      <anchorfile>classStg_1_1stg__point__t.html</anchorfile>
      <anchor>a2596e79b777855eaa999a70ecd138c50</anchor>
      <arglist>(const stg_point_t &amp;other)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>stg_point_t</name>
      <anchorfile>classStg_1_1stg__point__t.html</anchorfile>
      <anchor>a7055b8485645d5f548aaa5a984e24c82</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>stg_point_t</name>
      <anchorfile>classStg_1_1stg__point__t.html</anchorfile>
      <anchor>a040cd3ce885a4ee8ac6c4e7ced4e2c1d</anchor>
      <arglist>(stg_meters_t x, stg_meters_t y)</arglist>
    </member>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>x</name>
      <anchorfile>classStg_1_1stg__point__t.html</anchorfile>
      <anchor>a3b761a6724b57e56cf2fd2449b1bc115</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_meters_t</type>
      <name>y</name>
      <anchorfile>classStg_1_1stg__point__t.html</anchorfile>
      <anchor>a87a87cf66ecc9b91f283fd0dd2d314d4</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Stg::stg_rotrect_t</name>
    <filename>structStg_1_1stg__rotrect__t.html</filename>
    <member kind="variable">
      <type>Pose</type>
      <name>pose</name>
      <anchorfile>structStg_1_1stg__rotrect__t.html</anchorfile>
      <anchor>ad22f0d60968a10dfc7edf36e13a858d4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Size</type>
      <name>size</name>
      <anchorfile>structStg_1_1stg__rotrect__t.html</anchorfile>
      <anchor>a373fe36e88955ca378fd03a25b1c3207</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::StripPlotVis</name>
    <filename>classStg_1_1StripPlotVis.html</filename>
    <base>Stg::Visualizer</base>
    <member kind="function">
      <type>void</type>
      <name>AppendValue</name>
      <anchorfile>classStg_1_1StripPlotVis.html</anchorfile>
      <anchor>a4d45c4cf6ecfdc0b19c2437bd0081a28</anchor>
      <arglist>(float value)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>StripPlotVis</name>
      <anchorfile>classStg_1_1StripPlotVis.html</anchorfile>
      <anchor>a9280962956a2d7f7edd4048e07b0a91c</anchor>
      <arglist>(float x, float y, float w, float h, size_t len, Color fgcolor, Color bgcolor, const char *name, const char *wfname)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Visualize</name>
      <anchorfile>classStg_1_1StripPlotVis.html</anchorfile>
      <anchor>a0dc43df96aff8573885a6bdd72a984c2</anchor>
      <arglist>(Model *mod, Camera *cam)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~StripPlotVis</name>
      <anchorfile>classStg_1_1StripPlotVis.html</anchorfile>
      <anchor>a0b8fb32b65d86eafb4caceba76438fe8</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::SuperRegion</name>
    <filename>classStg_1_1SuperRegion.html</filename>
    <member kind="function">
      <type>void</type>
      <name>DrawOccupancy</name>
      <anchorfile>classStg_1_1SuperRegion.html</anchorfile>
      <anchor>a279b933687a270f4f2ac2b3955fe7d52</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>DrawVoxels</name>
      <anchorfile>classStg_1_1SuperRegion.html</anchorfile>
      <anchor>ae96d312bcf68c9c8952e7ae82e3cc453</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Region *</type>
      <name>GetRegion</name>
      <anchorfile>classStg_1_1SuperRegion.html</anchorfile>
      <anchor>ac72f66097e686282931e036e6601c4d3</anchor>
      <arglist>(int32_t x, int32_t y)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>SuperRegion</name>
      <anchorfile>classStg_1_1SuperRegion.html</anchorfile>
      <anchor>a09e4e30a7720c4548b0a8a28dddcdb7c</anchor>
      <arglist>(World *world, stg_point_int_t origin)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~SuperRegion</name>
      <anchorfile>classStg_1_1SuperRegion.html</anchorfile>
      <anchor>a3eefb7df0f63368f14b57e58055c9150</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>unsigned long</type>
      <name>count</name>
      <anchorfile>classStg_1_1SuperRegion.html</anchorfile>
      <anchor>ac4f7b435fd9db8438613ba8933087467</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::TextureManager</name>
    <filename>classStg_1_1TextureManager.html</filename>
    <member kind="function">
      <type>GLuint</type>
      <name>loadTexture</name>
      <anchorfile>classStg_1_1TextureManager.html</anchorfile>
      <anchor>a87be13b60dc9bb0b861bfca22ff2c5d6</anchor>
      <arglist>(const char *filename)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static TextureManager &amp;</type>
      <name>getInstance</name>
      <anchorfile>classStg_1_1TextureManager.html</anchorfile>
      <anchor>a0df7831e0cab833f13174b84749806b5</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>GLuint</type>
      <name>_mains_texture_id</name>
      <anchorfile>classStg_1_1TextureManager.html</anchorfile>
      <anchor>ae0c0b6e44b75da9eaa8b848fb5c3ddd1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>GLuint</type>
      <name>_stall_texture_id</name>
      <anchorfile>classStg_1_1TextureManager.html</anchorfile>
      <anchor>a3c0a0a7cb1c2a381303c98c44e6a6506</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Velocity</name>
    <filename>classStg_1_1Velocity.html</filename>
    <base>Stg::Pose</base>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Print</name>
      <anchorfile>classStg_1_1Velocity.html</anchorfile>
      <anchor>a0405ec3c9acc7f1b408fe67547c3d1ec</anchor>
      <arglist>(const char *prefix)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Velocity</name>
      <anchorfile>classStg_1_1Velocity.html</anchorfile>
      <anchor>ae6c34a71040242a5d24013da84f1b98f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Velocity</name>
      <anchorfile>classStg_1_1Velocity.html</anchorfile>
      <anchor>a2712e968a6f2bd0e0d9cded1cddcc3d4</anchor>
      <arglist>(stg_meters_t x, stg_meters_t y, stg_meters_t z, stg_radians_t a)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Visualizer</name>
    <filename>classStg_1_1Visualizer.html</filename>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>GetMenuName</name>
      <anchorfile>classStg_1_1Visualizer.html</anchorfile>
      <anchor>ab6ef7d43982c695eda99982d4270c632</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>GetWorldfileName</name>
      <anchorfile>classStg_1_1Visualizer.html</anchorfile>
      <anchor>ac3685601ac85e039cab13b516de79a02</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>Visualize</name>
      <anchorfile>classStg_1_1Visualizer.html</anchorfile>
      <anchor>a798d858493e1e61d825af1c35bb05fd5</anchor>
      <arglist>(Model *mod, Camera *cam)=0</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Visualizer</name>
      <anchorfile>classStg_1_1Visualizer.html</anchorfile>
      <anchor>a63f821d7e79edcda0f7d6e7150cbecd3</anchor>
      <arglist>(const std::string &amp;menu_name, const std::string &amp;worldfile_name)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~Visualizer</name>
      <anchorfile>classStg_1_1Visualizer.html</anchorfile>
      <anchor>a4ae82adbbac44426b73f90f7fff341a2</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::World</name>
    <filename>classStg_1_1World.html</filename>
    <base>Stg::Ancestor</base>
    <class kind="class">Stg::World::Event</class>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>AddModel</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a1496ba37cf684508ac124f541a7d7f53</anchor>
      <arglist>(Model *mod)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>AddModelName</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a3f1663f093abf22487537a822a115b76</anchor>
      <arglist>(Model *mod, const std::string &amp;name)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>AddPowerPack</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>aa535413c97e654524e315c2bb4d10e5b</anchor>
      <arglist>(PowerPack *pp)</arglist>
    </member>
    <member kind="function">
      <type>SuperRegion *</type>
      <name>AddSuperRegion</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a452875cbc7e62adfd0fd5d37896739da</anchor>
      <arglist>(const stg_point_int_t &amp;coord)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>AddUpdateCallback</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>ae571418000c53851038faf00acbbb58f</anchor>
      <arglist>(stg_world_callback_t cb, void *user)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>CancelQuit</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a5b85f478e479e3adac5bc4b372cad70c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>CancelQuitAll</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a003ffbaeaf706fcbe1017d0aa6f9fe1f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ClearRays</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>aff36f9dd3fe0e61a4ea18d02a87072ef</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual std::string</type>
      <name>ClockString</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a577774607c8ef81acd591621a56ec649</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ConsumeQueue</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a8b9bcbcd9f50ac7d68a1492dcee39506</anchor>
      <arglist>(unsigned int queue_num)</arglist>
    </member>
    <member kind="function">
      <type>Model *</type>
      <name>CreateModel</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>ae2451dd4a14602441fd98ef1b15417ab</anchor>
      <arglist>(Model *parent, const std::string &amp;typestr)</arglist>
    </member>
    <member kind="function">
      <type>SuperRegion *</type>
      <name>CreateSuperRegion</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a1add35af567d0a77d1b0686c9e089edb</anchor>
      <arglist>(stg_point_int_t origin)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>DestroySuperRegion</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a17b448eace182661a9a5d36282c68912</anchor>
      <arglist>(SuperRegion *sr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Enqueue</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a2d311eeee6bae9c4e3df42cb81b691da</anchor>
      <arglist>(unsigned int queue_num, stg_usec_t delay, Model *mod)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ExpireSuperRegion</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a88dd12e46036897fb8aac361df862ad9</anchor>
      <arglist>(SuperRegion *sr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Extend</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a8075e186f1b41e0a527bb606275222b3</anchor>
      <arglist>(stg_point3_t pt)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ForEachCellInLine</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a09b9e68e9066dce965d1a4f1b454b91d</anchor>
      <arglist>(const stg_point_int_t &amp;pt1, const stg_point_int_t &amp;pt2, CellPtrVec &amp;cells)</arglist>
    </member>
    <member kind="function">
      <type>unsigned int</type>
      <name>GetEventQueue</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>af084bf6cfdb21f691bc86e1a8187f305</anchor>
      <arglist>(Model *mod)</arglist>
    </member>
    <member kind="function">
      <type>const stg_bounds3d_t &amp;</type>
      <name>GetExtent</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>aff3b41982d1c711686d2c26eae9777cc</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Model *</type>
      <name>GetGround</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>ae8fbe44a4724121e0ffaf1ba0e024adb</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Model *</type>
      <name>GetModel</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a6b1b59c454c3a2261cf7b0abdc805930</anchor>
      <arglist>(const std::string &amp;name) const </arglist>
    </member>
    <member kind="function">
      <type>SuperRegion *</type>
      <name>GetSuperRegion</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a7190d4b793b20e89e9fa34e05557529e</anchor>
      <arglist>(const stg_point_int_t &amp;coord)</arglist>
    </member>
    <member kind="function">
      <type>SuperRegion *</type>
      <name>GetSuperRegionCached</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>ae195a9da87587f1d80af4d8a3f21f0cd</anchor>
      <arglist>(int32_t x, int32_t y)</arglist>
    </member>
    <member kind="function">
      <type>SuperRegion *</type>
      <name>GetSuperRegionCached</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>adf532cae2ba0f38d1cd4d1fa71bfed6a</anchor>
      <arglist>(const stg_point_int_t &amp;coord)</arglist>
    </member>
    <member kind="function">
      <type>uint64_t</type>
      <name>GetUpdateCount</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a007fb11e8c392c5fd18daf827efb1ec4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Worldfile *</type>
      <name>GetWorldFile</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>acf81d18ff640ef495c82bb2d0a6984b2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>IsGUI</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>af7c194e08e648fc1b1caf96e2f79a15d</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a3c1a2bb5f2d6205bec2d5fb11b4ac767</anchor>
      <arglist>(const char *worldfile_path)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>LoadBlock</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a4403286b91ff82e7b2182447fe4e6289</anchor>
      <arglist>(Worldfile *wf, int entity)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>LoadBlockGroup</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>aef6c1958bccff337b25d63ee84830c9f</anchor>
      <arglist>(Worldfile *wf, int entity)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>LoadModel</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a8f7d837c6e0619e6d98b7b350145fb81</anchor>
      <arglist>(Worldfile *wf, int entity)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Log</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a68379d35f41709d543aee8412ef4fedb</anchor>
      <arglist>(Model *mod)</arglist>
    </member>
    <member kind="function">
      <type>stg_point_int_t</type>
      <name>MetersToPixels</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a4546f2ac780708262ced8191506b6dd6</anchor>
      <arglist>(const stg_point_t &amp;pt)</arglist>
    </member>
    <member kind="function">
      <type>int32_t</type>
      <name>MetersToPixels</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>af60c8dac0f1d309af64eb4019911fa49</anchor>
      <arglist>(stg_meters_t x)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>NeedRedraw</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a463f5e838b91a06595010d30b46abe98</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>PastQuitTime</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>adc9318a0d2005802c41a74fb7ce78d49</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>Paused</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a144db66c477900be8c2fabcbabcac705</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>PopColor</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>aa21b0871f0ef5ef68036ebea11faba29</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>PushColor</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>ad361219666c8791c7063f8b53d296560</anchor>
      <arglist>(double r, double g, double b, double a)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>PushColor</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a628bd136bf2555ceea8992de15d76ea3</anchor>
      <arglist>(Color col)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Quit</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>aed1b06528a719f90e44d14c589abdf81</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>QuitAll</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>aa8c30e82a23c89a041bf549e39d57f03</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Raytrace</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a576adaba52201ea524339309f10b1e78</anchor>
      <arglist>(const Pose &amp;pose, const stg_meters_t range, const stg_radians_t fov, const stg_ray_test_func_t func, const Model *finder, const void *arg, stg_raytrace_result_t *samples, const uint32_t sample_count, const bool ztest)</arglist>
    </member>
    <member kind="function">
      <type>stg_raytrace_result_t</type>
      <name>Raytrace</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>ac4611598f62c723fe10bdcfc59b90b73</anchor>
      <arglist>(const Pose &amp;pose, const stg_meters_t range, const stg_ray_test_func_t func, const Model *finder, const void *arg, const bool ztest)</arglist>
    </member>
    <member kind="function">
      <type>stg_raytrace_result_t</type>
      <name>Raytrace</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a435f9a737fbc0c72b0f18cd5edbc0b52</anchor>
      <arglist>(const Ray &amp;ray)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual Model *</type>
      <name>RecentlySelectedModel</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a6980ea1d45fef3c2009979e19f9a6843</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RecordRay</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a38634e35d47011299a8d5d64f6b950e3</anchor>
      <arglist>(double x1, double y1, double x2, double y2)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RegisterOption</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a04e2dcff94092553fb40efcdaab1818a</anchor>
      <arglist>(Option *opt)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Reload</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a7677b28e51018c2b0a5b117302eaeb22</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>RemoveModel</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a96ea4ed0af8edd34a17259596a36011b</anchor>
      <arglist>(Model *mod)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RemovePowerPack</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>addbd44639721adb441e0672bfb487bce</anchor>
      <arglist>(PowerPack *pp)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>RemoveUpdateCallback</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a7fa09b8efe6f340881ec9414d1ff117f</anchor>
      <arglist>(stg_world_callback_t cb, void *user)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>Resolution</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a34f578e128ee1c4f3360bcce08135dea</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>Save</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a06902bf3d07de5edb7a89ee1147981ad</anchor>
      <arglist>(const char *filename)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ShowClock</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>af5afff1cfadcac314220a3ef69842a06</anchor>
      <arglist>(bool enable)</arglist>
    </member>
    <member kind="function">
      <type>stg_usec_t</type>
      <name>SimTimeNow</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>ae6bd8a7ee1296f64a590e23029c2e37e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Start</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>adfec9f77d3c63c7399d5844d05630811</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Stop</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a18b86410ffda7c4d0d018e4cd59aba79</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>TestQuit</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a8241a6ce384df5473ff73f029fb9561e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>TogglePause</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a61fedf61b3af41218ee2889cdebedcef</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>TryCharge</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a59352bee8ff2cbcf73467d2454d5eefd</anchor>
      <arglist>(PowerPack *pp, const Pose &amp;pose)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>UnLoad</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a53d5d1f4dc282566a23381909adbd2de</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>Update</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>ac518bc93441b88e5000c222820023401</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>World</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a58c94c81b930014a47f61a588421f265</anchor>
      <arglist>(const std::string &amp;name=&quot;MyWorld&quot;, double ppm=DEFAULT_PPM)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~World</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a8c73fba541a5817fff65147ba47cd827</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void *</type>
      <name>update_thread_entry</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a247a219cf02b97d978358188b6e4b44d</anchor>
      <arglist>(std::pair&lt; World *, int &gt; *info)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>UpdateAll</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>ad8813b39aa23dfe963fff64b1ebb4bdf</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>std::set&lt; Model * &gt;</type>
      <name>active_energy</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>aa3a89b54bff3b2a5617144710754609a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::set&lt; Model * &gt;</type>
      <name>active_velocity</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a9bb85347e9abc5ac8174b08365fa147f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; std::priority_queue&lt; Event &gt; &gt;</type>
      <name>event_queues</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a20739f65f253ec502a05b2e40a4e2dff</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Model *</type>
      <name>ground</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>ad76ecaa0209fac7d7e5d6d0c49083ce0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>paused</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>ad8100c766184098402cb9f542ef3befb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>PointIntVec</type>
      <name>rt_candidate_cells</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a897508d78376a582d92bdc21dc5cac37</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>PointIntVec</type>
      <name>rt_cells</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>ad2e87a73f72f435151b1d684d51fec39</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_usec_t</type>
      <name>sim_interval</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>adb8eefc188036ab17c1468178e306351</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static std::vector&lt; std::string &gt;</type>
      <name>args</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>ab0d50eed56d31d2155b8cb43e2e1766f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static std::string</type>
      <name>ctrlargs</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>ac78297bc129aa5e56263debbe8a4c871</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const int</type>
      <name>DEFAULT_PPM</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a9784420ba8ed4826d49d1f6f03ac01eb</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>CallUpdateCallbacks</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>afc3d9b2e54c8971bacb52b1785f8ad4b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::list&lt; std::pair&lt; stg_world_callback_t, void * &gt; &gt;</type>
      <name>cb_list</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>adbded404263de842185aedceeed1b21a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>stg_bounds3d_t</type>
      <name>extent</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a057e9d6399a51b86631af75aed96c99d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>graphics</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a2675b0ca05a60cb2765e7b38ec2b7870</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::set&lt; Option * &gt;</type>
      <name>option_table</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a3e0391353eb270a936fcccac5bab53df</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::list&lt; PowerPack * &gt;</type>
      <name>powerpack_list</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a0de3ad1119b20f06178e549cb9b577e8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>stg_usec_t</type>
      <name>quit_time</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>ae4a3ef53e3d3363bd55a7df8c323a944</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::list&lt; float * &gt;</type>
      <name>ray_list</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a0c98cced125ac91eacf96a6e0dcd092f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>stg_usec_t</type>
      <name>sim_time</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>aca4870a978a0c85da816f47419089017</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>SuperRegion *</type>
      <name>sr_cached</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a0309307dadcea4f9ce83b66018e471ca</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::map&lt; stg_point_int_t, SuperRegion * &gt;</type>
      <name>superregions</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a6840c003162685dd578843bee47cabd3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::vector&lt; ModelPtrVec &gt;</type>
      <name>update_lists</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a0ce80e6963096bfac854e7b7b2d3cdec</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>uint64_t</type>
      <name>updates</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>a43bda618797227cfb4f90d25ab7829ad</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>Worldfile *</type>
      <name>wf</name>
      <anchorfile>classStg_1_1World.html</anchorfile>
      <anchor>af5502ca7af4650891c498f4a3171b3ad</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::World::Event</name>
    <filename>classStg_1_1World_1_1Event.html</filename>
    <member kind="function">
      <type></type>
      <name>Event</name>
      <anchorfile>classStg_1_1World_1_1Event.html</anchorfile>
      <anchor>a272b677848bffdf063f17e8bd2e3c7f8</anchor>
      <arglist>(stg_usec_t time, Model *mod)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator&lt;</name>
      <anchorfile>classStg_1_1World_1_1Event.html</anchorfile>
      <anchor>a5251d44208a0acfd358453db54c227f4</anchor>
      <arglist>(const Event &amp;other) const </arglist>
    </member>
    <member kind="variable">
      <type>Model *</type>
      <name>mod</name>
      <anchorfile>classStg_1_1World_1_1Event.html</anchorfile>
      <anchor>afdbb4d36906479f7d6aa7f911ccd9cde</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>stg_usec_t</type>
      <name>time</name>
      <anchorfile>classStg_1_1World_1_1Event.html</anchorfile>
      <anchor>a4a177503ad18367b27eafbf3c9e6201b</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::Worldfile</name>
    <filename>classStg_1_1Worldfile.html</filename>
    <class kind="class">Stg::Worldfile::CEntity</class>
    <class kind="class">Stg::Worldfile::CMacro</class>
    <class kind="class">Stg::Worldfile::CToken</class>
    <member kind="function">
      <type>int</type>
      <name>GetEntityCount</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a1b31e5caffca6098ed49ab86a5d2578d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>GetEntityParent</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a76a790b04ce4f1274e37058be7d146f5</anchor>
      <arglist>(int entity)</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>GetEntityType</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a036d526b7153316810f278abb148a21d</anchor>
      <arglist>(int entity)</arglist>
    </member>
    <member kind="function">
      <type>CProperty *</type>
      <name>GetProperty</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a1a6d3702d1751b9bef3ecd5e46a043b2</anchor>
      <arglist>(int entity, const char *name)</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>GetPropertyValue</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a4822370b95b9498574bf674d12878236</anchor>
      <arglist>(CProperty *property, int index)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>Load</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a32ab37a33e037603ed7875776b9d804d</anchor>
      <arglist>(const char *filename)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>LookupEntity</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a86b530f916fe2c9e2233d1b6aac38904</anchor>
      <arglist>(const char *type)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>PropertyExists</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>abb1e46dc4740ef2f5151058484a8fc8b</anchor>
      <arglist>(int section, const char *token)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>ReadAngle</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a12146a5a689ac2ffea97407bc74589c4</anchor>
      <arglist>(int entity, const char *name, double value)</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>ReadColor</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>aa6789d366d88bbadaea78b4d3edc9828</anchor>
      <arglist>(int entity, const char *name, uint32_t value)</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>ReadFilename</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a8dbda5a3c51d502ccc28562f595bc299</anchor>
      <arglist>(int entity, const char *name, const char *value)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>ReadFloat</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>ab4cbc024ef5553e21fd0bdeb6f04d8fb</anchor>
      <arglist>(int entity, const char *name, double value)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>ReadInt</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a70afc43d48e74cb06034107eb7c5c299</anchor>
      <arglist>(int entity, const char *name, int value)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>ReadLength</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>ac859919dd2a0622d4d19a245e455c35c</anchor>
      <arglist>(int entity, const char *name, double value)</arglist>
    </member>
    <member kind="function">
      <type>const std::string</type>
      <name>ReadString</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a62a6c26f7b1b75a7aadf924b0adb4aed</anchor>
      <arglist>(int entity, const char *name, const std::string &amp;value)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>ReadTupleAngle</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a37f24d5eed7ce075510426aea25c622d</anchor>
      <arglist>(int entity, const char *name, int index, double value)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>ReadTupleFloat</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a1d251ef52445a19ccb216b2a124ff7ea</anchor>
      <arglist>(int entity, const char *name, int index, double value)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>ReadTupleLength</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>ade1eb1b9f2e9825bdbe7942980f222c7</anchor>
      <arglist>(int entity, const char *name, int index, double value)</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>ReadTupleString</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a0eb01bd9888e6bb519766495db71e602</anchor>
      <arglist>(int entity, const char *name, int index, const char *value)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>Save</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a9cf0e69a4b6997b4bcca0bbb31ef636f</anchor>
      <arglist>(const char *filename)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>WarnUnused</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a2a3b6e50c5f67b7639e481a4d594e0c8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Worldfile</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a6b45bce3259b2cf422d3162cbec91b56</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>WriteFloat</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>ac30e52d7877202eef70df654cc7df674</anchor>
      <arglist>(int entity, const char *name, double value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>WriteInt</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a6708579b9f7d447511223d16c5887d51</anchor>
      <arglist>(int entity, const char *name, int value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>WriteLength</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a0d6a38452caa5ed481508fba0befe5b2</anchor>
      <arglist>(int entity, const char *name, double value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>WriteString</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a5cd085f1a1f4532d839d51cf7de4d3c8</anchor>
      <arglist>(int entity, const char *name, const std::string &amp;value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>WriteTupleAngle</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a4fb99a5f271c4266f59d01ecf47602b5</anchor>
      <arglist>(int entity, const char *name, int index, double value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>WriteTupleFloat</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>ade931e73b7044a3c507499b1d8a193b8</anchor>
      <arglist>(int entity, const char *name, int index, double value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>WriteTupleLength</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a04e48c3542e225c44bb63fd026d3baab</anchor>
      <arglist>(int entity, const char *name, int index, double value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>WriteTupleString</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a28561b9a19a7fcd7a747fa1d0c9472cb</anchor>
      <arglist>(int entity, const char *name, int index, const char *value)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Worldfile</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>ab1781097758aefb91242521b8d80b8e5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>filename</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a153fb729ac1999094a6598537464833d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>double</type>
      <name>unit_angle</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a8eb7a372cd29148b189071ef99754741</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>double</type>
      <name>unit_length</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>a8e58a7776da5fed2fdf91ad633169631</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected">
      <type>FILE *</type>
      <name>FileOpen</name>
      <anchorfile>classStg_1_1Worldfile.html</anchorfile>
      <anchor>ad67be52da2c29d17c5b74874731ca027</anchor>
      <arglist>(const char *filename, const char *method)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Stg::WorldGui</name>
    <filename>classStg_1_1WorldGui.html</filename>
    <base>Stg::World</base>
    <member kind="function" virtualness="virtual">
      <type>virtual std::string</type>
      <name>ClockString</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>a151166646ca36b49bcde18cf137d7aef</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>DrawBoundingBoxTree</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>ae040de6d8dd027b1ae6f9edf7f211fa6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>EnergyString</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>aa8025dfc462aea00a3ad5070f642fdea</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>Canvas *</type>
      <name>GetCanvas</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>a8860c7b0b898beb345b59cfa849c7423</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>IsGUI</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>a3462e7dd0a5d1fe3a6e59431c5f2adac</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Load</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>a3e352a847ca0fec0d61646268225c1eb</anchor>
      <arglist>(const char *filename)</arglist>
    </member>
    <member kind="function">
      <type>stg_usec_t</type>
      <name>RealTimeNow</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>a691c9cf402434af17512f7965e595b07</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual Model *</type>
      <name>RecentlySelectedModel</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>aee7cbeef09a905dd0df2280ade14654a</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>RemoveChild</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>a646bb192680816b37947f1a8caee1cf2</anchor>
      <arglist>(Model *mod)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>Save</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>aaa5247dbf2e0d761f61ab885613c44c5</anchor>
      <arglist>(const char *filename)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Show</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>a9143d3e7cca0a5c4d32b772a2130560c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Start</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>a7016da8c99c72a581cfa8e375fa55976</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>Stop</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>a24bbcc8d14c0f4470f53085a0bfe9424</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>UnLoad</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>acbcbdcac8ed23de03ae07e76e8e5a6ad</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>Update</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>ae1c1f26467b048bd4c9abf6b0261280c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>WorldGui</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>a62e4ea522d198569df193bf8f2494916</anchor>
      <arglist>(int W, int H, const char *L=0)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~WorldGui</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>aa73bccbc2447ef6978bd1068b877743c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>DrawOccupancy</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>a30676210a28104e2b6660e3130e60f06</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>DrawVoxels</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>ad9e466b2bace3fd095eb1afc2eed3299</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>PopColor</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>a0400e218bfa74856bdf40c20f7eaf4b4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>PushColor</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>a6572854b3ab44552a986a754cc38b64d</anchor>
      <arglist>(double r, double g, double b, double a)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>PushColor</name>
      <anchorfile>classStg_1_1WorldGui.html</anchorfile>
      <anchor>a10acbfd21c06d0bba332cb10b4bde6ed</anchor>
      <arglist>(Color col)</arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>Stg::Gl</name>
    <filename>namespaceStg_1_1Gl.html</filename>
    <member kind="function">
      <type>void</type>
      <name>coord_shift</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>a26c2886a1e05eef7a7441d6380179eaa</anchor>
      <arglist>(double x, double y, double z, double a)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_array</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>a46e92528fdfe042d44b9a344a420346a</anchor>
      <arglist>(float x, float y, float w, float h, float *data, size_t len, size_t offset)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_array</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>a81247441332f227465b8564a4b98d3d4</anchor>
      <arglist>(float x, float y, float w, float h, float *data, size_t len, size_t offset, float min, float max)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_centered_rect</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>a8154128a928200f8bbd141ca9da6b581</anchor>
      <arglist>(float x, float y, float dx, float dy)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_grid</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>a7021c3e586d12ec8dc6d94076b534ff2</anchor>
      <arglist>(stg_bounds3d_t vol)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_octagon</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>add03839ab05ba34a390b9b3b61ff5916</anchor>
      <arglist>(float x, float y, float w, float h, float m)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_octagon</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>aa15e3f6e14bd6ed40bf7d5035d2ebe73</anchor>
      <arglist>(float w, float h, float m)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_origin</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>abfd6f55019ff621993471ff7d8c73f18</anchor>
      <arglist>(double len)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_speech_bubble</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>ab1015e64f590d342c435f2543fc9e2d1</anchor>
      <arglist>(float x, float y, float z, const char *str)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_string</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>a8ab2c93ac9c6c2c4538f9effe2c2dab4</anchor>
      <arglist>(float x, float y, float z, const char *string)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_string_multiline</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>ab6592fda3cbcd1388e0cdc89230b963f</anchor>
      <arglist>(float x, float y, float w, float h, const char *string, Fl_Align align)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_vector</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>ae4d2a45581468af46f17a38de915a699</anchor>
      <arglist>(double x, double y, double z)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>pose_inverse_shift</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>abcbb056b83779155ae51d3ba52eca334</anchor>
      <arglist>(const Pose &amp;pose)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>pose_shift</name>
      <anchorfile>namespaceStg_1_1Gl.html</anchorfile>
      <anchor>a05adf1436465b6b75d5c3ff4c823432d</anchor>
      <arglist>(const Pose &amp;pose)</arglist>
    </member>
  </compound>
  <compound kind="dir">
    <name>/Users/vaughan/PS/stage/trunk/libstage/</name>
    <path>/Users/vaughan/PS/stage/trunk/libstage/</path>
    <filename>dir_f8fe07df9f1db240e6c9cfd9e12054d1.html</filename>
    <file>ancestor.cc</file>
    <file>block.cc</file>
    <file>blockgroup.cc</file>
    <file>camera.cc</file>
    <file>canvas.cc</file>
    <file>canvas.hh</file>
    <file>charger.cc</file>
    <file>color.cc</file>
    <file>file_manager.cc</file>
    <file>file_manager.hh</file>
    <file>gl.cc</file>
    <file>glutgraphics.cc</file>
    <file>logentry.cc</file>
    <file>logo.cc</file>
    <file>main.cc</file>
    <file>model.cc</file>
    <file>model_actuator.cc</file>
    <file>model_blinkenlight.cc</file>
    <file>model_blobfinder.cc</file>
    <file>model_callbacks.cc</file>
    <file>model_camera.cc</file>
    <file>model_draw.cc</file>
    <file>model_fiducial.cc</file>
    <file>model_getset.cc</file>
    <file>model_gripper.cc</file>
    <file>model_laser.cc</file>
    <file>model_lightindicator.cc</file>
    <file>model_load.cc</file>
    <file>model_position.cc</file>
    <file>model_props.cc</file>
    <file>model_ranger.cc</file>
    <file>model_wifi.cc</file>
    <file>option.cc</file>
    <file>option.hh</file>
    <file>options_dlg.cc</file>
    <file>options_dlg.hh</file>
    <file>powerpack.cc</file>
    <file>puck.cc</file>
    <file>region.cc</file>
    <file>region.hh</file>
    <file>stage.cc</file>
    <file>stage.hh</file>
    <file>stagecpp.cc</file>
    <file>test.cc</file>
    <file>texture_manager.cc</file>
    <file>texture_manager.hh</file>
    <file>typetable.cc</file>
    <file>vis_strip.cc</file>
    <file>world.cc</file>
    <file>worldfile.cc</file>
    <file>worldfile.hh</file>
    <file>worldgui.cc</file>
  </compound>
  <compound kind="dir">
    <name>/Users/vaughan/PS/stage/trunk/libstageplugin/</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/</path>
    <filename>dir_c36212a957d6c5419190e872ad10cdcc.html</filename>
    <dir>/Users/vaughan/PS/stage/trunk/libstageplugin/test/</dir>
    <file>p_actarray.cc</file>
    <file>p_blobfinder.cc</file>
    <file>p_bumper.cc</file>
    <file>p_driver.cc</file>
    <file>p_driver.h</file>
    <file>p_fiducial.cc</file>
    <file>p_graphics.cc</file>
    <file>p_gripper.cc</file>
    <file>p_laser.cc</file>
    <file>p_localize.cc</file>
    <file>p_map.cc</file>
    <file>p_position.cc</file>
    <file>p_power.cc</file>
    <file>p_ptz.cc</file>
    <file>p_simulation.cc</file>
    <file>p_sonar.cc</file>
    <file>p_speech.cc</file>
    <file>p_wifi.cc</file>
    <file>stg_time.cc</file>
  </compound>
  <compound kind="dir">
    <name>/Users/vaughan/PS/stage/trunk/libstageplugin/test/</name>
    <path>/Users/vaughan/PS/stage/trunk/libstageplugin/test/</path>
    <filename>dir_f239b3a8d2d4886b08e88bf859fec441.html</filename>
    <file>lsp_test.cc</file>
    <file>lsp_test_blobfinder.cc</file>
    <file>lsp_test_blobfinder.hh</file>
    <file>lsp_test_fiducial.cc</file>
    <file>lsp_test_fiducial.hh</file>
    <file>lsp_test_laser.cc</file>
    <file>lsp_test_laser.hh</file>
    <file>lsp_test_position2d.cc</file>
    <file>lsp_test_position2d.hh</file>
    <file>lsp_test_proxy.cc</file>
    <file>lsp_test_proxy.hh</file>
    <file>lsp_test_simulation.cc</file>
    <file>lsp_test_simulation.hh</file>
    <file>lsp_test_sonar.cc</file>
    <file>lsp_test_sonar.hh</file>
    <file>lsp_test_speech.cc</file>
    <file>lsp_test_speech.hh</file>
  </compound>
</tagfile>

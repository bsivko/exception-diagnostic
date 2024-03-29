require 'rubygems'

gem 'Mxx_ru', '>= 1.5.2'

require 'mxx_ru/cpp'

MxxRu::Cpp::composite_target( MxxRu::BUILD_ROOT ) {

		global_include_path( "." )
		default_runtime_mode( MxxRu::Cpp::RUNTIME_RELEASE )
		MxxRu::enable_show_brief

		implib_path 'lib'
		
		required_prj "ex_diag/prj.rb" 

		required_prj "gtest/prj.rb" 
		required_prj "test/base/prj.ut.rb" 
		required_prj "test/sequence/prj.ut.rb" 
		required_prj "test/formatting/prj.ut.rb" 
		required_prj "test/streams/prj.ut.rb" 

		required_prj "samples/hello_world/prj.rb" 
		required_prj "samples/several/prj.rb" 
		required_prj "samples/formatting/prj.rb" 
		required_prj "samples/class_fields/prj.rb" 
		required_prj "samples/streams/prj.rb" 
}

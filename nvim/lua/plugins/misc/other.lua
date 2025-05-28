return {
	'herisetiawan00/other.nvim',
	config = function()
		require("other-nvim").setup({
			mappings = {
				{
					pattern = "/lib/(.*)/(.*).dart",
					target = "/test/%1/%2_test.dart",
					context = "test"
				},
				{
					pattern = "/test/(.*)/(.*)_test.dart",
					target = "/lib/%1/%2.dart",
					context = "implementation"
				},
				{
					pattern = "/lib/(.*)/(.*)_entity.dart",
					target = "/lib/data/models/%2_model.dart",
					context = "model",
				},
				{
					pattern = "/lib/(.*)/(.*)_table.dart",
					target = "/lib/data/models/%2_model.dart",
					context = "model",
				},
				{
					pattern = "/lib/(.*)/(.*)_entity.dart",
					target = "/lib/data/datasources/local/databases/tables/%2_table.dart",
					context = "table",
				},
				{
					pattern = "/lib/(.*)/(.*)_model.dart",
					target = "/lib/data/datasources/local/databases/tables/%2_table.dart",
					context = "table",
				},
				{
					pattern = "/lib/(.*)/(.*)_model.dart",
					target = "/lib/domain/entities/%2_entity.dart",
					context = "entity",
				},
				{
					pattern = "/lib/(.*)/(.*)_table.dart",
					target = "/lib/domain/entities/%2_entity.dart",
					context = "entity",
				},
				{
					pattern = "/lib/data/(.*)/(.*)_repository_impl.dart",
					target = "/lib/domain/%1/%2_repository.dart",
					context = "abstract",
				},
				{
					pattern = "/lib/domain/(.*)/(.*)_repository.dart",
					target  = "/lib/data/%1/%2_repository_impl.dart",
					context = "implementation",
				},
				{
					pattern = "/lib/domain/usecases/(.*)_usecase.dart",
					target  = "/lib/domain/repositories/%1_repository.dart",
					context = "repository"
				},
				{
					pattern = "/lib/data/datasources/(.*)/(.*)_(.*)_datasource.dart",
					target  = "/lib/domain/repositories/%2_repository.dart",
					context = "repository"
				},
				{
					pattern = "/lib/domain/usecases/(.*)_usecase.dart",
					target  = "/lib/data/datasources/local/%1_local_datasource.dart",
					context = "datasource"
				},
				{
					pattern = "/lib/domain/usecases/(.*)_usecase.dart",
					target  = "/lib/data/datasources/remote/%1_remote_datasource.dart",
					context = "datasource"
				},
				{
					pattern = "/lib/domain/repositories/(.*)_repository.dart",
					target  = "/lib/data/datasources/local/%1_local_datasource.dart",
					context = "datasource"
				},
				{
					pattern = "/lib/domain/repositories/(.*)_repository.dart",
					target  = "/lib/data/datasources/remote/%1_remote_datasource.dart",
					context = "datasource"
				},
				{
					pattern = "/lib/data/datasources/local/(.*)_local_datasource.dart",
					target  = "/lib/data/datasources/remote/%1_remote_datasource.dart",
					context = "datasource"
				},
				{
					pattern = "/lib/data/datasources/remote/(.*)_remote_datasource.dart",
					target  = "/lib/data/datasources/local/%1_local_datasource.dart",
					context = "datasource"
				},
				{
					pattern = "/lib/domain/repositories/(.*)_repository.dart",
					target  = "/lib/domain/usecases/%1_usecase.dart",
					context = "usecase"
				},
				{
					pattern = "/lib/data/datasources/(.*)/(.*)_(.*)_datasource.dart",
					target  = "/lib/domain/usecases/%2_usecase.dart",
					context = "usecase"
				},

			},
			rememberBuffers = false,
		})
	end
}

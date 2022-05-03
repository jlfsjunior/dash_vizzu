
module DashVizzu
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("jl/dashvizzu.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "dash_vizzu",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "async-DashVizzu.js",
    external_url = "https://unpkg.com/dash_vizzu@0.0.1/dash_vizzu/async-DashVizzu.js",
    dynamic = nothing,
    async = :true,
    type = :js
),
DashBase.Resource(
    relative_package_path = "async-DashVizzu.js.map",
    external_url = "https://unpkg.com/dash_vizzu@0.0.1/dash_vizzu/async-DashVizzu.js.map",
    dynamic = true,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "dash_vizzu.min.js",
    external_url = nothing,
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "dash_vizzu.min.js.map",
    external_url = nothing,
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end

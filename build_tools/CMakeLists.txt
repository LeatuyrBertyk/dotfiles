cmake_minimum_required(VERSION 3.10)

# 1. Tên dự án nội bộ (vẫn lấy theo folder để CMake quản lý, nhưng không ảnh hưởng tên file xuất ra)
get_filename_component(PROJECT_NAME_INTERNAL ${CMAKE_CURRENT_SOURCE_DIR} NAME)
project(${PROJECT_NAME_INTERNAL} LANGUAGES CXX)

# 2. Cấu hình C++ tiêu chuẩn
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 3. Thu gom tất cả file .cpp trong src (Bắt buộc phải có src)
file(GLOB_RECURSE SOURCES "src/*.cpp")

# 4. TẠO FILE THỰC THI VỚI TÊN CỐ ĐỊNH LÀ "app"
if(SOURCES)
    add_executable(app ${SOURCES})
else()
    message(FATAL_ERROR "Loi: Khong tim thay file .cpp nao trong thu muc src!")
endif()

# 5. Xử lý thư mục include (Chỉ thêm nếu tồn tại)
if(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/include")
    target_include_directories(app PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/include")
endif()

# 6. Cấu hình đầu ra luôn nằm trong build/bin/app
set_target_properties(app PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
)

# 7. Xử lý thư mục data (Chỉ copy nếu tồn tại)
if(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/data")
    add_custom_command(TARGET app POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_directory
            "${CMAKE_CURRENT_SOURCE_DIR}/data"
            "$<TARGET_FILE_DIR:app>/data"
        COMMENT "Dang copy du lieu tu folder data vao build/bin/data..."
    )
endif()

# 8. Xử lý thư mục lib (Chỉ link nếu tồn tại)
if(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/lib")
    target_link_directories(app PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/lib")
endif()


-- Derived Table: Là bảng ảo tạm thời được tạo ra từ kết quả của một câu lệnh SELECT lồng trong mệnh đề FROM
-- Để hệ quản trị cơ sở dữ liệu có một cái tên cụ thể để định danh và truy xuất các cột từ bảng ảo đó.

SELECT SUM(total_spent)
FROM (
    SELECT student_id, SUM(amount) as total_spent
    FROM Payments
    GROUP BY student_id
    HAVING SUM(amount) > 10000000
) AS vip_total;

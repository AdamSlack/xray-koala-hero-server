

curl -X POST -H "Content-type: application/json" -d '{"study_id":"BigFatWhale", "password":"P4$$w0rd"}' "localhost:8084/auth"
curl -X GET -H "Content-type: application/json" -d '{"study_id":"BigFatWhale", "token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdHVkeV9pZCI6IkJpZ0ZhdFdoYWxlIiwiaWF0IjoxNTI5OTI3OTcyLCJleHAiOjIzOTM5Mjc5NzIsImp0aSI6IkJpZ0ZhdFdoYWxlIn0.Gi78faUxQUoMkSDYjAuFjTc5kYc4-uF_K_r8tq8NQqQ"}' localhost:8084/koala
curl -X POST -H "Content-type: application/json" -d '{"auth_details":{"study_id":"BigFatWhale", "token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdHVkeV9pZCI6IkJpZ0ZhdFdoYWxlIiwiaWF0IjoxNTI5OTQzMzAzLCJleHAiOjIzOTM5NDMzMDMsImp0aSI6IkJpZ0ZhdFdoYWxlIn0.Qm9vZj7qJE6ptfVjaVrnhAHY6_UswvKctxrm6H5dQ28"}, "interaction":{"study_id":"BigFatWhale", "interaction_type":"Test Interaction.","interaction_datetime":"2045-11-10T16:15:03.971Z", "associated_app_id":"com.facebook.orca", "page_name":"Not a Page", "additional_data":{"data":"none"}}}' localhost:8084/koala/interaction
curl -X POST -H "Content-type: application/json" -d '{"auth_details":{"study_id":"BigFatWhale", "token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdHVkeV9pZCI6IkJpZ0ZhdFdoYWxlIiwiaWF0IjoxNTI5OTQzMzAzLCJleHAiOjIzOTM5NDMzMDMsImp0aSI6IkJpZ0ZhdFdoYWxlIn0.Qm9vZj7qJE6ptfVjaVrnhAHY6_UswvKctxrm6H5dQ28"}, "phone_info":{"study_id":"BigFatWhale", "retrieval_datetime":"2045-11-10T16:15:03.97", "installed_apps":["com.facebook.orca","something.something.com"], "top_ten_apps":["something.something.something", "something.com.something", "com.something.something"]}}' localhost:8084/koala/phone_info
curl -X POST -H "Content-type: application/json" -d '{"auth_details":{"study_id":"BigFatWhale", "token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdHVkeV9pZCI6IkJpZ0ZhdFdoYWxlIiwiaWF0IjoxNTMwNjI4Mjk5LCJleHAiOjE1MzA3MTQ2OTksImp0aSI6IkJpZ0ZhdFdoYWxlIn0.-TJEkNEG6RzEl8N96h9pd-tO62b4xpLbRyyNe_vYhms"}, "audio_info":{"study_id" : "a", "file_id" : "a", "date" : "2045-11-10T16:15:03.97", "size" : 0, "length" : 0, "file" : ""}}' localhost:8084/koala/audio


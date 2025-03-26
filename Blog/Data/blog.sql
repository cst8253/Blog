-- Drop tobles
DROP TABLE post;
DROP TABLE comment;

CREATE TABLE post
(
    postid      INTEGER PRIMARY KEY,
    title       TEXT NOT NULL,
    content     TEXT NOT NULL,
    createdby   TEXT NOT NULL,
    createdon   DATE
);

-- Create the Comments table
CREATE TABLE comment
(
    commentid   INTEGER PRIMARY KEY,
    postid      INTEGER NOT NULL,
    comment     TEXT NOT NULL,
    createdby   TEXT NOT NULL,
    createdon   DATE,
    FOREIGN KEY (postid) REFERENCES post (postid)
);

-- Insert sample posts
INSERT INTO post (postid, title, content, createdby, createdon) VALUES
                                                                    (1, 'The Future of AI', 'Artificial Intelligence is set to revolutionize industries and daily life in unimaginable ways. From enhancing healthcare with predictive diagnostics to transforming transportation through autonomous vehicles, AI is pushing the boundaries of what technology can achieve. However, it also raises important ethical questions about job displacement, data privacy, and the need for unbiased algorithms. What are your thoughts on how we can harness AI responsibly?', 'Jason', '2025-03-26'),
                                                                    (2, 'Healthy Lifestyle Tips', 'Living a healthy life doesn’t have to be complicated. By making small, sustainable changes, like incorporating more fruits and vegetables into your meals, staying active with activities you enjoy, and prioritizing sleep, you can make a significant impact on your well-being. It’s not about perfection but consistency. What healthy habits have worked for you?', 'Alex', '2025-03-25'),
                                                                    (3, 'Travel Destinations for 2025', 'This year offers incredible opportunities for unforgettable travel. Whether it’s exploring the serene temples of Kyoto, Japan, venturing into the rugged beauty of Iceland’s glaciers, or soaking up the vibrant culture in cities like Mexico City or Barcelona, there’s something for every traveler. Where will your adventures take you in 2025?', 'Emma', '2025-03-24');

-- Insert sample comments
INSERT INTO comment (commentid, postid, comment, createdby, createdon) VALUES
                                                                           (1, 1, 'This is fascinating! AI has endless possibilities.', 'Chris', '2025-03-26'),
                                                                           (2, 1, 'I wonder how it will affect jobs.', 'Taylor', '2025-03-26'),
                                                                           (3, 2, 'Thanks for the tips! Really helpful.', 'Jordan', '2025-03-25'),
                                                                           (4, 2, 'I started following these and feel so much better.', 'Morgan', '2025-03-25'),
                                                                           (5, 3, 'I’m planning a trip to Japan this year!', 'Sam', '2025-03-24'),
                                                                           (6, 3, 'I’ve been to one of these destinations, and it was amazing!', 'Jamie', '2025-03-24');
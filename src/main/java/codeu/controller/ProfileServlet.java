// Copyright 2017 Google Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package codeu.controller;

import codeu.model.data.Conversation;
import codeu.model.data.Message;
import codeu.model.data.User;
import codeu.model.store.basic.MessageStore;
import codeu.model.store.basic.UserStore;
import java.io.IOException;
import java.time.Instant;
import java.util.List;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;

/** Servlet class responsible for the profile page. */
public class ProfileServlet extends HttpServlet {

  /** Store class that gives access to Messages. */
  private MessageStore messageStore;

  /** Store class that gives access to Users. */
  private UserStore userStore;

  /** Tell whether the profile page is on the current logged in User. */
  private boolean current;

  /** Set up state for handling chat requests. */
  /** TODO: not sure if this is necessary? */
  @Override
  public void init() throws ServletException {
    super.init();
    setMessageStore(MessageStore.getInstance());
    setUserStore(UserStore.getInstance());
  }

  /**
   * Sets the MessageStore used by this servlet. This function provides a common setup method for
   * use by the test framework or the servlet's init() function.
   */
  void setMessageStore(MessageStore messageStore) {
    this.messageStore = messageStore;
  }

  /**
   * Sets the UserStore used by this servlet. This function provides a common setup method for use
   * by the test framework or the servlet's init() function.
   */
  void setUserStore(UserStore userStore) {
    this.userStore = userStore;
  }

  /**
   * Sets the current profile page user
   */
  void setCurrent(boolean current) {
      this.current = current;
  }

  /**
   * This function fires when a user navigates to the profile page. It gets the user title from
   * the URL, finds the corresponding messages, and displays the messages by that user.
   * It then forwards to profile.jsp for rendering.
   */
  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws IOException, ServletException {
    String requestUrl = request.getRequestURI();
    //this is the user whose page we are viewing
    //substring looks at the substring at the specified point, which is after /users/
    String pageUserString = requestUrl.substring("/users/".length());
    //this is the user that is logged in
    String currentUser = (String) request.getSession().getAttribute("user");
    if (pageUserString.equals(currentUser)) {
        setCurrent(true);
    } else {
        setCurrent(false);
    }
    User pageUser = userStore.getUser(pageUserString);
    // load the messages according to which user page we are viewing
    List<Message> messages = messageStore.getMessagesByUser(pageUser);

    request.setAttribute("messages", messages);
    //request.getRequestDispatcher("/WEB-INF/view/chat.jsp").forward(request, response);
  }
}

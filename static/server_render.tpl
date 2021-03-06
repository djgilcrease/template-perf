<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Server render</title>
  <script>
    function onLoad() {
      var x = window.chrome.loadTimes();
      if (x.firstPaintAfterLoadTime == 0) {
        window.setTimeout(onLoad, 1000);
        return;
      }
      console.log('Seconds to first paint: ' + (x.firstPaintTime - x.startLoadTime));
      console.log('Seconds to first paint after load: ' + (x.firstPaintAfterLoadTime - x.startLoadTime));
    }
  </script>
</head>
<body>
  <table>
    <thead>
      <tr>
        <th>Name</th>
        <th>Colour</th>
        <th>Sex</th>
        <th>Legs</th>
      </tr>
    </thead>
    <tbody>
      {{range .}}
        <tr>
          <td>{{.Name}}</td>
          <td>{{.Color}}</td>
          <td>{{.Sex}}</td>
          <td>{{.Legs}}</td>
        </tr>
      {{end}}
    </tbody>
  </table>
  <script>onLoad()</script>
  <!-- Example based on https://html.spec.whatwg.org/multipage/scripting.html#the-template-element -->
</body>
</html>
